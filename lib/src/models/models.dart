import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_player/video_player.dart';

part 'models.freezed.dart';

@freezed
class ScopedVideo with _$ScopedVideo {
  const ScopedVideo._();
  const factory ScopedVideo.uninitialized(
    VideoPlayerController controller, {
    @Default(VideoStatus.buffering()) VideoStatus status,
    @Default(Frames()) Frames frames,
  }) = _Uninitialized;

  const factory ScopedVideo.initialized(
    VideoPlayerController controller, {
    @Default(VideoStatus.buffering()) VideoStatus status,
    @Default(Frames()) Frames frames,
  }) = _Initialized;

  const factory ScopedVideo.error(
    VideoPlayerController controller, {
    String? reason,
    @Default(VideoStatus.buffering()) VideoStatus status,
    @Default(Frames()) Frames frames,
  }) = _Error;

  bool get isPlaying => status.isPlaying;
}

@freezed
class VideoStatus with _$VideoStatus {
  const VideoStatus._();
  const factory VideoStatus.playing() = _Playing;
  const factory VideoStatus.paused() = _Paused;
  const factory VideoStatus.done() = _Done;
  const factory VideoStatus.buffering() = _Buffering;

  bool get isPlaying => this is _Playing;
  bool get isBuffering => this is _Buffering;
  bool get isDone => this is _Done;
  bool get available => this is _Playing || this is _Paused;
}

@freezed
class Frames with _$Frames {
  const Frames._();
  const factory Frames({
    @Default(Duration.zero) Duration position,
    @Default(Duration.zero) Duration duration,
    @Default(Duration.zero) Duration lastFrame,
  }) = _Frames;
}
