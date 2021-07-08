import 'package:flutter/material.dart';
import 'package:video_bloc/src/core/bloc.dart';
import 'package:video_bloc/src/models/models.dart';

import '../../consumer.dart';
import '../animated_play_pause.dart';
import 'overlay_bloc.dart';

class ControlsOverlay extends StatefulWidget {
  const ControlsOverlay({
    Key? key,
    this.backdropColor = Colors.black45,
    this.builder,
  }) : super(key: key);

  final Color backdropColor;
  final WidgetBuilder? builder;

  @override
  _ControlsOverlayState createState() => _ControlsOverlayState();
}

class _ControlsOverlayState extends State<ControlsOverlay> {
  late final OverlayBloc _bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _bloc = OverlayBloc(VideoBloc.of(context));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final child = widget.builder?.call(context) ?? const _AnimatedPlayPause();

    return StreamBuilder<bool>(
      stream: _bloc.stream,
      initialData: _bloc.initialState,
      builder: (context, snapshot) {
        final visible = snapshot.data!;
        return GestureDetector(
          onTap: _bloc.onTap,
          child: AnimatedOpacity(
            duration: Duration(milliseconds: 300),
            opacity: visible ? 1 : 0,
            child: Container(
              constraints: BoxConstraints.expand(),
              alignment: Alignment.center,
              color: widget.backdropColor,
              child: !visible ? null : child,
            ),
          ),
        );
      },
    );
  }
}

class _AnimatedPlayPause extends StatelessWidget {
  const _AnimatedPlayPause({
    Key? key,
    this.color = Colors.white,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => VideoBloc.of(context).togglePlay(),
      child: VideoConsumer<VideoStatus>(
        select: (video) => video.status,
        builder: (context, status) => status.maybeWhen(
          done: () => Icon(Icons.replay, color: color, size: 50),
          buffering: () => CircularProgressIndicator(
            strokeWidth: 1.0,
            valueColor: AlwaysStoppedAnimation<Color>(color),
          ),
          orElse: () => AnimatedPlayPause(status: status, color: color),
        ),
      ),
    );
  }
}
