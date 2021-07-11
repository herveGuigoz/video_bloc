import 'dart:async';

import 'package:flutter/material.dart';
import 'package:video_bloc/src/core/bloc.dart';
import 'package:video_bloc/src/models/models.dart';
import 'package:video_player/video_player.dart' as video;

class VideoPLayer extends StatefulWidget {
  const VideoPLayer({Key? key}) : super(key: key);

  @override
  _VideoPLayerState createState() => _VideoPLayerState();
}

class _VideoPLayerState extends State<VideoPLayer> {
  late video.VideoPlayerController _controller;
  StreamSubscription<ScopedVideo>? _subscription;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final bloc = VideoBloc.of(context);
    _controller = bloc.controller;
    _subscription?.cancel();
    _subscription = bloc.stream.listen((event) {
      if (_controller.dataSource != event.controller.dataSource) {
        setState(() {
          _controller = event.controller;
        });
      }
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return video.VideoPlayer(_controller);
  }
}
