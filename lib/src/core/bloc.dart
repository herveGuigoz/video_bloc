import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:video_bloc/src/core/inherited_bloc.dart';
import 'package:video_bloc/src/models/models.dart';
import 'package:video_bloc/video_bloc.dart';
import 'package:video_player/video_player.dart';

import 'mapper.dart';
import 'observer.dart';

/// Signature for selecting a part of a [ScopedVideo] state.
typedef Selector<T, S> = S Function(T state);

/// Wrapper around [VideoPlayerController] using Bloc pattern
class VideoBloc extends Bloc<ScopedVideo> with VideoMapperMixin {
  VideoBloc({
    required VideoPlayerController controller,
  }) : super(initialState: ScopedVideo(controller));

  static VideoObserver observer = VideoObserver();
  static VideoBloc of(BuildContext context) => InheritedBloc.of(context).bloc;

  bool _disposed = false;

  @override
  VideoPlayerController get controller => state.controller;

  String get dataSource => controller.dataSource;

  Future<void> setDataSource(String value) async {
    final oldValue = state.controller;
    await oldValue.pause();
    oldValue.removeListener(_listen);
    emit(state.copyWith(
      controller: VideoPlayerController.network(value),
      status: VideoStatus.initial(),
    ));
    await initialize(position: oldValue.value.position);
    await play();
    oldValue.dispose();
  }

  // Build platform video player and start listening to it.
  Future<void> initialize({Duration? position}) async {
    try {
      await controller.initialize();
      if (position != null) await seekTo(position);
      controller.addListener(_listen);
    } catch (error) {
      emit(state.copyWith(status: VideoStatus.error()));
    }
  }

  void _listen() {
    if (!_disposed && controller.value.duration.inSeconds > 1) {
      mapControllerValueToState();
    }
  }

  /// Send a play event to the platform.
  Future<void> play() async {
    if (_disposed) return;
    assert(controller.value.isInitialized);
    await controller.play();
    VideoBloc.observer.didPlay(this);
  }

  /// Send a pause event to the platform.
  Future<void> pause() async {
    if (_disposed) return;
    assert(controller.value.isInitialized);
    await controller.pause();
    VideoBloc.observer.didPause(this);
  }

  /// Either play, pause or replay from the video's current status.
  Future<void> togglePlay() async {
    if (_disposed) return;
    status.maybeWhen(
      playing: () async => pause(),
      paused: () async => play(),
      done: () async => replay(),
      orElse: () {},
    );
  }

  /// Rewind video at position 0 and start playing.
  Future<void> replay([Duration position = Duration.zero]) async {
    await seekTo(position);
    await play();
  }

  Future<void> seekTo(Duration position) async {
    if (_disposed) return;
    await controller.seekTo(position);
  }

  /// Add 10 seconds from the video's current timestamp.
  Future<void> forward10() async {
    await seekTo(controller.value.position + const Duration(seconds: 10));
  }

  /// Remove 10 seconds from the video's current timestamp.
  Future<void> rewind10() async {
    await seekTo(controller.value.position - const Duration(seconds: 10));
  }

  void dispose() {
    _disposed = true;
    controller.dispose();
    super.dispose();
  }
}

abstract class Bloc<S> {
  Bloc({required this.initialState});

  final S initialState;
  S get state {
    return _stateController.hasValue ? _stateController.value : initialState;
  }

  final _stateController = BehaviorSubject<S>();
  Stream<S> get stream => _stateController.stream;

  @protected
  void emit(S value) {
    if (_stateController.isClosed) return;
    _stateController.sink.add(value);
  }

  Stream<T> select<T>(Selector<S, T> selector) async* {
    assert(!_stateController.isClosed);
    T? previous;
    await for (var chunk in _stateController.stream) {
      T current = selector(chunk);
      if (previous != current) {
        previous = current;
        yield current;
      }
    }
  }

  @mustCallSuper
  void dispose() {
    _stateController.close();
  }
}
