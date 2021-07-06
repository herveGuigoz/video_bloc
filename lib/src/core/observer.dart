import 'package:flutter/foundation.dart';

import 'bloc.dart';

/// An interface for observing the behavior of [VideoBloc] instances.
class VideoObserver {
  /// Last playing video
  VideoBloc? _video;

  /// Called whenever a play action occurs in any [VideoBloc]
  @mustCallSuper
  void didPlay(VideoBloc video) {
    if (_video?.dataSource != video.dataSource) {
      _video?.pause();
      _video = video;
    }
  }

  /// Called whenever a pause action occurs in any [VideoBloc]
  @mustCallSuper
  void didPause(VideoBloc video) {
    _video = null;
  }
}
