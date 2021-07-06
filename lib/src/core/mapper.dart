import 'package:flutter/foundation.dart';
import 'package:video_player/video_player.dart';

import '../models/models.dart';
import 'bloc.dart';

/// Compute [ScopedVideo] from [VideoPlayerValue] and emit result to stream
mixin VideoMapperMixin on Bloc<ScopedVideo> {
  VideoPlayerController get controller;

  @protected
  void mapControllerValueToState() {
    if (!controller.value.isInitialized) {
      emit(ScopedVideo.uninitialized(controller));
    } else if (controller.value.hasError) {
      emit(ScopedVideo.error(controller));
    } else {
      emit(ScopedVideo.initialized(controller, status: status, frames: frames));
    }
  }

  @protected
  VideoStatus get status {
    if (!controller.value.isInitialized) return const VideoStatus.buffering();

    final position = controller.value.position.inMilliseconds;
    final duration = controller.value.duration.inMilliseconds;
    final maxBuffering = lastFrame.inMilliseconds;

    if (controller.value.isBuffering ||
        // video is partially loaded
        (maxBuffering > 0 &&
            // video is not ended
            position < duration &&
            // last frames is equal to current position
            maxBuffering <= position)) {
      return const VideoStatus.buffering();
    }

    if (controller.value.position >= controller.value.duration) {
      return const VideoStatus.done();
    }

    return controller.value.isPlaying
        ? const VideoStatus.playing()
        : const VideoStatus.paused();
  }

  @protected
  Frames get frames {
    if (!controller.value.isInitialized) return const Frames();

    return Frames(
      position: controller.value.position,
      duration: controller.value.duration,
      lastFrame: lastFrame,
    );
  }

  @protected
  Duration get lastFrame {
    if (!controller.value.isInitialized) return Duration.zero;

    var maxBuffering = 0;
    for (final range in controller.value.buffered) {
      final end = range.end.inMilliseconds;
      if (end > maxBuffering) {
        maxBuffering = end;
      }
    }

    return Duration(milliseconds: maxBuffering);
  }
}
