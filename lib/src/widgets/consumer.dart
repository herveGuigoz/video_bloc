import 'dart:async';

import 'package:flutter/material.dart';
import 'package:video_bloc/src/models/models.dart';

import '../core/bloc.dart';

typedef ConsumerBuilder<S> = Widget Function(BuildContext context, S current);

class VideoConsumer<S> extends StatefulWidget {
  const VideoConsumer({
    Key? key,
    required this.select,
    required this.builder,
  }) : super(key: key);

  final Selector<ScopedVideo, S> select;
  final ConsumerBuilder<S> builder;

  @override
  _VideoConsumerState<S> createState() => _VideoConsumerState<S>();
}

class _VideoConsumerState<S> extends State<VideoConsumer<S>> {
  late S _state;
  StreamSubscription<S>? _subscription;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final bloc = VideoBloc.of(context);
    _state = widget.select(bloc.state);
    _subscription?.cancel();
    _subscription = null;
    _subscription = bloc.select(widget.select).listen((event) {
      if (_state != event) setState(() => _state = event);
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _state);
  }
}
