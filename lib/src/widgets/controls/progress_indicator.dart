import 'package:flutter/material.dart';
import 'package:video_bloc/src/models/models.dart';
import 'package:video_bloc/src/widgets/_widgets.dart';
import 'package:video_player/video_player.dart' as video;

import '../../../video_bloc.dart';

class VideoProgressIndicator extends StatelessWidget {
  const VideoProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return VideoConsumer<ScopedVideo>(
      select: (state) => state,
      builder: (context, value) => value.status.isInitialized
          ? video.VideoProgressIndicator(
              value.controller,
              allowScrubbing: true,
              padding: const EdgeInsets.all(0),
              colors: video.VideoProgressColors(
                backgroundColor: Colors.transparent,
                bufferedColor: theme.colorScheme.primary.withOpacity(0.4),
                playedColor: theme.colorScheme.primary.withOpacity(0.8),
              ),
            )
          : SizedBox.shrink(),
    );
  }
}
