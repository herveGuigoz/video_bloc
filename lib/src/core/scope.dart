import 'package:flutter/material.dart';
import 'package:video_bloc/src/core/inherited_bloc.dart';
import 'package:video_player/video_player.dart';

import 'bloc.dart';

class VideoScope extends StatefulWidget {
  const VideoScope({
    Key? key,
    required this.source,
    this.autoPlay = false,
    required this.child,
  }) : super(key: key);

  final String source;
  final bool autoPlay;
  final Widget child;

  @override
  _VideoScopeState createState() => _VideoScopeState();
}

class _VideoScopeState extends State<VideoScope> {
  late VideoBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = VideoBloc(
      controller: VideoPlayerController.network(widget.source),
    )..initialize(autoPlay: widget.autoPlay);
  }

  @override
  void didUpdateWidget(covariant VideoScope oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.source != oldWidget.source) {
      _bloc.setDataSource(widget.source);
    }
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InheritedBloc(
      dataSource: widget.source,
      bloc: _bloc,
      child: widget.child,
    );
  }
}
