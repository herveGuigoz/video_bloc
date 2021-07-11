import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../video_bloc.dart';

/// Render either image, error icon, child from [VideoStatus],
/// Usually child should be [VideoPLayer] widget.
/// /!\ Should not be used when video may change his source as this will render
/// image while initializing next video.
class VideoThumbnail extends StatelessWidget {
  const VideoThumbnail({
    Key? key,
    required this.imageSource,
    this.fit = BoxFit.fill,
    this.iconSize = 50.0,
    required this.child,
  }) : super(key: key);

  /// Network image url
  final String imageSource;

  /// How to inscribe the image into the space allocated during layout.
  final BoxFit fit;

  /// How to size play and error icons
  final double iconSize;

  /// Widget to render when video is initialized and do not returned error.
  /// Usually a [VideoPLayer]
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final errorIcon = Icon(Icons.error, color: Colors.white, size: iconSize);

    return VideoConsumer<VideoStatus>(
      select: (state) => state.status,
      builder: (context, status) => ColoredBox(
        color: Colors.black,
        child: AnimatedSwitcher(
          duration: Duration(milliseconds: 150),
          child: status.maybeWhen(
            initial: () => GestureDetector(
              onTap: () => VideoBloc.of(context).play(),
              child: Stack(
                fit: StackFit.expand,
                alignment: Alignment.center,
                children: [
                  CachedNetworkImage(
                    imageUrl: imageSource,
                    errorWidget: (_, __, ___) => child,
                  ),
                  Icon(Icons.play_arrow, color: Colors.white, size: iconSize)
                ],
              ),
            ),
            error: () => Center(child: errorIcon),
            orElse: () => child,
          ),
        ),
      ),
    );
  }
}
