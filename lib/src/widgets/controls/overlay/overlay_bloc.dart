import 'dart:async';

import 'package:video_bloc/src/core/bloc.dart';
import 'package:video_bloc/src/models/models.dart';

const _kDuration = Duration(seconds: 2);

class OverlayBloc extends Bloc<bool> {
  OverlayBloc(this.video) : super(initialState: !video.state.isPlaying) {
    _subscription = video.select((state) => state.status).listen(eventHandler);
  }

  final VideoBloc video;
  StreamSubscription<VideoStatus>? _subscription;
  Timer? _timer;

  bool get _isPLaying => video.state.isPlaying;
  bool get visible => state;
  set visible(bool value) {
    if (value == state) return;
    emit(value);
  }

  void eventHandler(VideoStatus event) {
    if (!visible && !event.isPlaying) visible = true;
    if (visible && event.isPlaying) visible = false;
    if (visible && !event.isPlaying) _timer?.cancel();
  }

  void onTap() {
    if (!_isPLaying) return;

    if (!visible) {
      visible = true;
      _timer = Timer(_kDuration, () => visible = false);
    } else {
      _timer?.cancel();
      _timer = Timer(_kDuration, () => visible = false);
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    _subscription?.cancel();
    super.dispose();
  }
}
