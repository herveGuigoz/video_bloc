import 'package:flutter/material.dart';
import 'package:video_bloc/src/core/bloc.dart';
import 'package:video_player/video_player.dart' as video;

class VideoPLayer extends StatelessWidget {
  const VideoPLayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = VideoBloc.of(context);
    return StreamBuilder<video.VideoPlayerController>(
      stream: bloc.select((state) => state.controller),
      initialData: bloc.initialState.controller,
      builder: (context, snapshot) {
        return video.VideoPlayer(snapshot.data!);
      },
    );
  }
}
