// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ScopedVideoTearOff {
  const _$ScopedVideoTearOff();

  _Uninitialized uninitialized(VideoPlayerController controller,
      {VideoStatus status = const VideoStatus.buffering(),
      Frames frames = const Frames()}) {
    return _Uninitialized(
      controller,
      status: status,
      frames: frames,
    );
  }

  _Initialized initialized(VideoPlayerController controller,
      {VideoStatus status = const VideoStatus.buffering(),
      Frames frames = const Frames()}) {
    return _Initialized(
      controller,
      status: status,
      frames: frames,
    );
  }

  _Error error(VideoPlayerController controller,
      {String? reason,
      VideoStatus status = const VideoStatus.buffering(),
      Frames frames = const Frames()}) {
    return _Error(
      controller,
      reason: reason,
      status: status,
      frames: frames,
    );
  }
}

/// @nodoc
const $ScopedVideo = _$ScopedVideoTearOff();

/// @nodoc
mixin _$ScopedVideo {
  VideoPlayerController get controller => throw _privateConstructorUsedError;
  VideoStatus get status => throw _privateConstructorUsedError;
  Frames get frames => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            VideoPlayerController controller, VideoStatus status, Frames frames)
        uninitialized,
    required TResult Function(
            VideoPlayerController controller, VideoStatus status, Frames frames)
        initialized,
    required TResult Function(VideoPlayerController controller, String? reason,
            VideoStatus status, Frames frames)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoPlayerController controller, VideoStatus status,
            Frames frames)?
        uninitialized,
    TResult Function(VideoPlayerController controller, VideoStatus status,
            Frames frames)?
        initialized,
    TResult Function(VideoPlayerController controller, String? reason,
            VideoStatus status, Frames frames)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Uninitialized value) uninitialized,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Uninitialized value)? uninitialized,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScopedVideoCopyWith<ScopedVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScopedVideoCopyWith<$Res> {
  factory $ScopedVideoCopyWith(
          ScopedVideo value, $Res Function(ScopedVideo) then) =
      _$ScopedVideoCopyWithImpl<$Res>;
  $Res call(
      {VideoPlayerController controller, VideoStatus status, Frames frames});

  $VideoStatusCopyWith<$Res> get status;
  $FramesCopyWith<$Res> get frames;
}

/// @nodoc
class _$ScopedVideoCopyWithImpl<$Res> implements $ScopedVideoCopyWith<$Res> {
  _$ScopedVideoCopyWithImpl(this._value, this._then);

  final ScopedVideo _value;
  // ignore: unused_field
  final $Res Function(ScopedVideo) _then;

  @override
  $Res call({
    Object? controller = freezed,
    Object? status = freezed,
    Object? frames = freezed,
  }) {
    return _then(_value.copyWith(
      controller: controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as VideoStatus,
      frames: frames == freezed
          ? _value.frames
          : frames // ignore: cast_nullable_to_non_nullable
              as Frames,
    ));
  }

  @override
  $VideoStatusCopyWith<$Res> get status {
    return $VideoStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }

  @override
  $FramesCopyWith<$Res> get frames {
    return $FramesCopyWith<$Res>(_value.frames, (value) {
      return _then(_value.copyWith(frames: value));
    });
  }
}

/// @nodoc
abstract class _$UninitializedCopyWith<$Res>
    implements $ScopedVideoCopyWith<$Res> {
  factory _$UninitializedCopyWith(
          _Uninitialized value, $Res Function(_Uninitialized) then) =
      __$UninitializedCopyWithImpl<$Res>;
  @override
  $Res call(
      {VideoPlayerController controller, VideoStatus status, Frames frames});

  @override
  $VideoStatusCopyWith<$Res> get status;
  @override
  $FramesCopyWith<$Res> get frames;
}

/// @nodoc
class __$UninitializedCopyWithImpl<$Res> extends _$ScopedVideoCopyWithImpl<$Res>
    implements _$UninitializedCopyWith<$Res> {
  __$UninitializedCopyWithImpl(
      _Uninitialized _value, $Res Function(_Uninitialized) _then)
      : super(_value, (v) => _then(v as _Uninitialized));

  @override
  _Uninitialized get _value => super._value as _Uninitialized;

  @override
  $Res call({
    Object? controller = freezed,
    Object? status = freezed,
    Object? frames = freezed,
  }) {
    return _then(_Uninitialized(
      controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as VideoStatus,
      frames: frames == freezed
          ? _value.frames
          : frames // ignore: cast_nullable_to_non_nullable
              as Frames,
    ));
  }
}

/// @nodoc

class _$_Uninitialized extends _Uninitialized {
  const _$_Uninitialized(this.controller,
      {this.status = const VideoStatus.buffering(),
      this.frames = const Frames()})
      : super._();

  @override
  final VideoPlayerController controller;
  @JsonKey(defaultValue: const VideoStatus.buffering())
  @override
  final VideoStatus status;
  @JsonKey(defaultValue: const Frames())
  @override
  final Frames frames;

  @override
  String toString() {
    return 'ScopedVideo.uninitialized(controller: $controller, status: $status, frames: $frames)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Uninitialized &&
            (identical(other.controller, controller) ||
                const DeepCollectionEquality()
                    .equals(other.controller, controller)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.frames, frames) ||
                const DeepCollectionEquality().equals(other.frames, frames)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(controller) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(frames);

  @JsonKey(ignore: true)
  @override
  _$UninitializedCopyWith<_Uninitialized> get copyWith =>
      __$UninitializedCopyWithImpl<_Uninitialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            VideoPlayerController controller, VideoStatus status, Frames frames)
        uninitialized,
    required TResult Function(
            VideoPlayerController controller, VideoStatus status, Frames frames)
        initialized,
    required TResult Function(VideoPlayerController controller, String? reason,
            VideoStatus status, Frames frames)
        error,
  }) {
    return uninitialized(controller, status, frames);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoPlayerController controller, VideoStatus status,
            Frames frames)?
        uninitialized,
    TResult Function(VideoPlayerController controller, VideoStatus status,
            Frames frames)?
        initialized,
    TResult Function(VideoPlayerController controller, String? reason,
            VideoStatus status, Frames frames)?
        error,
    required TResult orElse(),
  }) {
    if (uninitialized != null) {
      return uninitialized(controller, status, frames);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Uninitialized value) uninitialized,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Error value) error,
  }) {
    return uninitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Uninitialized value)? uninitialized,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (uninitialized != null) {
      return uninitialized(this);
    }
    return orElse();
  }
}

abstract class _Uninitialized extends ScopedVideo {
  const factory _Uninitialized(VideoPlayerController controller,
      {VideoStatus status, Frames frames}) = _$_Uninitialized;
  const _Uninitialized._() : super._();

  @override
  VideoPlayerController get controller => throw _privateConstructorUsedError;
  @override
  VideoStatus get status => throw _privateConstructorUsedError;
  @override
  Frames get frames => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UninitializedCopyWith<_Uninitialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res>
    implements $ScopedVideoCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  @override
  $Res call(
      {VideoPlayerController controller, VideoStatus status, Frames frames});

  @override
  $VideoStatusCopyWith<$Res> get status;
  @override
  $FramesCopyWith<$Res> get frames;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$ScopedVideoCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? controller = freezed,
    Object? status = freezed,
    Object? frames = freezed,
  }) {
    return _then(_Initialized(
      controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as VideoStatus,
      frames: frames == freezed
          ? _value.frames
          : frames // ignore: cast_nullable_to_non_nullable
              as Frames,
    ));
  }
}

/// @nodoc

class _$_Initialized extends _Initialized {
  const _$_Initialized(this.controller,
      {this.status = const VideoStatus.buffering(),
      this.frames = const Frames()})
      : super._();

  @override
  final VideoPlayerController controller;
  @JsonKey(defaultValue: const VideoStatus.buffering())
  @override
  final VideoStatus status;
  @JsonKey(defaultValue: const Frames())
  @override
  final Frames frames;

  @override
  String toString() {
    return 'ScopedVideo.initialized(controller: $controller, status: $status, frames: $frames)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.controller, controller) ||
                const DeepCollectionEquality()
                    .equals(other.controller, controller)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.frames, frames) ||
                const DeepCollectionEquality().equals(other.frames, frames)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(controller) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(frames);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            VideoPlayerController controller, VideoStatus status, Frames frames)
        uninitialized,
    required TResult Function(
            VideoPlayerController controller, VideoStatus status, Frames frames)
        initialized,
    required TResult Function(VideoPlayerController controller, String? reason,
            VideoStatus status, Frames frames)
        error,
  }) {
    return initialized(controller, status, frames);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoPlayerController controller, VideoStatus status,
            Frames frames)?
        uninitialized,
    TResult Function(VideoPlayerController controller, VideoStatus status,
            Frames frames)?
        initialized,
    TResult Function(VideoPlayerController controller, String? reason,
            VideoStatus status, Frames frames)?
        error,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(controller, status, frames);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Uninitialized value) uninitialized,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Error value) error,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Uninitialized value)? uninitialized,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized extends ScopedVideo {
  const factory _Initialized(VideoPlayerController controller,
      {VideoStatus status, Frames frames}) = _$_Initialized;
  const _Initialized._() : super._();

  @override
  VideoPlayerController get controller => throw _privateConstructorUsedError;
  @override
  VideoStatus get status => throw _privateConstructorUsedError;
  @override
  Frames get frames => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> implements $ScopedVideoCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  @override
  $Res call(
      {VideoPlayerController controller,
      String? reason,
      VideoStatus status,
      Frames frames});

  @override
  $VideoStatusCopyWith<$Res> get status;
  @override
  $FramesCopyWith<$Res> get frames;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$ScopedVideoCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? controller = freezed,
    Object? reason = freezed,
    Object? status = freezed,
    Object? frames = freezed,
  }) {
    return _then(_Error(
      controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as VideoStatus,
      frames: frames == freezed
          ? _value.frames
          : frames // ignore: cast_nullable_to_non_nullable
              as Frames,
    ));
  }
}

/// @nodoc

class _$_Error extends _Error {
  const _$_Error(this.controller,
      {this.reason,
      this.status = const VideoStatus.buffering(),
      this.frames = const Frames()})
      : super._();

  @override
  final VideoPlayerController controller;
  @override
  final String? reason;
  @JsonKey(defaultValue: const VideoStatus.buffering())
  @override
  final VideoStatus status;
  @JsonKey(defaultValue: const Frames())
  @override
  final Frames frames;

  @override
  String toString() {
    return 'ScopedVideo.error(controller: $controller, reason: $reason, status: $status, frames: $frames)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.controller, controller) ||
                const DeepCollectionEquality()
                    .equals(other.controller, controller)) &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.frames, frames) ||
                const DeepCollectionEquality().equals(other.frames, frames)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(controller) ^
      const DeepCollectionEquality().hash(reason) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(frames);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            VideoPlayerController controller, VideoStatus status, Frames frames)
        uninitialized,
    required TResult Function(
            VideoPlayerController controller, VideoStatus status, Frames frames)
        initialized,
    required TResult Function(VideoPlayerController controller, String? reason,
            VideoStatus status, Frames frames)
        error,
  }) {
    return error(controller, reason, status, frames);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoPlayerController controller, VideoStatus status,
            Frames frames)?
        uninitialized,
    TResult Function(VideoPlayerController controller, VideoStatus status,
            Frames frames)?
        initialized,
    TResult Function(VideoPlayerController controller, String? reason,
            VideoStatus status, Frames frames)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(controller, reason, status, frames);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Uninitialized value) uninitialized,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Uninitialized value)? uninitialized,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends ScopedVideo {
  const factory _Error(VideoPlayerController controller,
      {String? reason, VideoStatus status, Frames frames}) = _$_Error;
  const _Error._() : super._();

  @override
  VideoPlayerController get controller => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  @override
  VideoStatus get status => throw _privateConstructorUsedError;
  @override
  Frames get frames => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$VideoStatusTearOff {
  const _$VideoStatusTearOff();

  _Playing playing() {
    return const _Playing();
  }

  _Paused paused() {
    return const _Paused();
  }

  _Done done() {
    return const _Done();
  }

  _Buffering buffering() {
    return const _Buffering();
  }
}

/// @nodoc
const $VideoStatus = _$VideoStatusTearOff();

/// @nodoc
mixin _$VideoStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() playing,
    required TResult Function() paused,
    required TResult Function() done,
    required TResult Function() buffering,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? playing,
    TResult Function()? paused,
    TResult Function()? done,
    TResult Function()? buffering,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Playing value) playing,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Done value) done,
    required TResult Function(_Buffering value) buffering,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Playing value)? playing,
    TResult Function(_Paused value)? paused,
    TResult Function(_Done value)? done,
    TResult Function(_Buffering value)? buffering,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoStatusCopyWith<$Res> {
  factory $VideoStatusCopyWith(
          VideoStatus value, $Res Function(VideoStatus) then) =
      _$VideoStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$VideoStatusCopyWithImpl<$Res> implements $VideoStatusCopyWith<$Res> {
  _$VideoStatusCopyWithImpl(this._value, this._then);

  final VideoStatus _value;
  // ignore: unused_field
  final $Res Function(VideoStatus) _then;
}

/// @nodoc
abstract class _$PlayingCopyWith<$Res> {
  factory _$PlayingCopyWith(_Playing value, $Res Function(_Playing) then) =
      __$PlayingCopyWithImpl<$Res>;
}

/// @nodoc
class __$PlayingCopyWithImpl<$Res> extends _$VideoStatusCopyWithImpl<$Res>
    implements _$PlayingCopyWith<$Res> {
  __$PlayingCopyWithImpl(_Playing _value, $Res Function(_Playing) _then)
      : super(_value, (v) => _then(v as _Playing));

  @override
  _Playing get _value => super._value as _Playing;
}

/// @nodoc

class _$_Playing extends _Playing {
  const _$_Playing() : super._();

  @override
  String toString() {
    return 'VideoStatus.playing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Playing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() playing,
    required TResult Function() paused,
    required TResult Function() done,
    required TResult Function() buffering,
  }) {
    return playing();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? playing,
    TResult Function()? paused,
    TResult Function()? done,
    TResult Function()? buffering,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Playing value) playing,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Done value) done,
    required TResult Function(_Buffering value) buffering,
  }) {
    return playing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Playing value)? playing,
    TResult Function(_Paused value)? paused,
    TResult Function(_Done value)? done,
    TResult Function(_Buffering value)? buffering,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(this);
    }
    return orElse();
  }
}

abstract class _Playing extends VideoStatus {
  const factory _Playing() = _$_Playing;
  const _Playing._() : super._();
}

/// @nodoc
abstract class _$PausedCopyWith<$Res> {
  factory _$PausedCopyWith(_Paused value, $Res Function(_Paused) then) =
      __$PausedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PausedCopyWithImpl<$Res> extends _$VideoStatusCopyWithImpl<$Res>
    implements _$PausedCopyWith<$Res> {
  __$PausedCopyWithImpl(_Paused _value, $Res Function(_Paused) _then)
      : super(_value, (v) => _then(v as _Paused));

  @override
  _Paused get _value => super._value as _Paused;
}

/// @nodoc

class _$_Paused extends _Paused {
  const _$_Paused() : super._();

  @override
  String toString() {
    return 'VideoStatus.paused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Paused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() playing,
    required TResult Function() paused,
    required TResult Function() done,
    required TResult Function() buffering,
  }) {
    return paused();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? playing,
    TResult Function()? paused,
    TResult Function()? done,
    TResult Function()? buffering,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Playing value) playing,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Done value) done,
    required TResult Function(_Buffering value) buffering,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Playing value)? playing,
    TResult Function(_Paused value)? paused,
    TResult Function(_Done value)? done,
    TResult Function(_Buffering value)? buffering,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class _Paused extends VideoStatus {
  const factory _Paused() = _$_Paused;
  const _Paused._() : super._();
}

/// @nodoc
abstract class _$DoneCopyWith<$Res> {
  factory _$DoneCopyWith(_Done value, $Res Function(_Done) then) =
      __$DoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$DoneCopyWithImpl<$Res> extends _$VideoStatusCopyWithImpl<$Res>
    implements _$DoneCopyWith<$Res> {
  __$DoneCopyWithImpl(_Done _value, $Res Function(_Done) _then)
      : super(_value, (v) => _then(v as _Done));

  @override
  _Done get _value => super._value as _Done;
}

/// @nodoc

class _$_Done extends _Done {
  const _$_Done() : super._();

  @override
  String toString() {
    return 'VideoStatus.done()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Done);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() playing,
    required TResult Function() paused,
    required TResult Function() done,
    required TResult Function() buffering,
  }) {
    return done();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? playing,
    TResult Function()? paused,
    TResult Function()? done,
    TResult Function()? buffering,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Playing value) playing,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Done value) done,
    required TResult Function(_Buffering value) buffering,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Playing value)? playing,
    TResult Function(_Paused value)? paused,
    TResult Function(_Done value)? done,
    TResult Function(_Buffering value)? buffering,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _Done extends VideoStatus {
  const factory _Done() = _$_Done;
  const _Done._() : super._();
}

/// @nodoc
abstract class _$BufferingCopyWith<$Res> {
  factory _$BufferingCopyWith(
          _Buffering value, $Res Function(_Buffering) then) =
      __$BufferingCopyWithImpl<$Res>;
}

/// @nodoc
class __$BufferingCopyWithImpl<$Res> extends _$VideoStatusCopyWithImpl<$Res>
    implements _$BufferingCopyWith<$Res> {
  __$BufferingCopyWithImpl(_Buffering _value, $Res Function(_Buffering) _then)
      : super(_value, (v) => _then(v as _Buffering));

  @override
  _Buffering get _value => super._value as _Buffering;
}

/// @nodoc

class _$_Buffering extends _Buffering {
  const _$_Buffering() : super._();

  @override
  String toString() {
    return 'VideoStatus.buffering()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Buffering);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() playing,
    required TResult Function() paused,
    required TResult Function() done,
    required TResult Function() buffering,
  }) {
    return buffering();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? playing,
    TResult Function()? paused,
    TResult Function()? done,
    TResult Function()? buffering,
    required TResult orElse(),
  }) {
    if (buffering != null) {
      return buffering();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Playing value) playing,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Done value) done,
    required TResult Function(_Buffering value) buffering,
  }) {
    return buffering(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Playing value)? playing,
    TResult Function(_Paused value)? paused,
    TResult Function(_Done value)? done,
    TResult Function(_Buffering value)? buffering,
    required TResult orElse(),
  }) {
    if (buffering != null) {
      return buffering(this);
    }
    return orElse();
  }
}

abstract class _Buffering extends VideoStatus {
  const factory _Buffering() = _$_Buffering;
  const _Buffering._() : super._();
}

/// @nodoc
class _$FramesTearOff {
  const _$FramesTearOff();

  _Frames call(
      {Duration position = Duration.zero,
      Duration duration = Duration.zero,
      Duration lastFrame = Duration.zero}) {
    return _Frames(
      position: position,
      duration: duration,
      lastFrame: lastFrame,
    );
  }
}

/// @nodoc
const $Frames = _$FramesTearOff();

/// @nodoc
mixin _$Frames {
  Duration get position => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  Duration get lastFrame => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FramesCopyWith<Frames> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FramesCopyWith<$Res> {
  factory $FramesCopyWith(Frames value, $Res Function(Frames) then) =
      _$FramesCopyWithImpl<$Res>;
  $Res call({Duration position, Duration duration, Duration lastFrame});
}

/// @nodoc
class _$FramesCopyWithImpl<$Res> implements $FramesCopyWith<$Res> {
  _$FramesCopyWithImpl(this._value, this._then);

  final Frames _value;
  // ignore: unused_field
  final $Res Function(Frames) _then;

  @override
  $Res call({
    Object? position = freezed,
    Object? duration = freezed,
    Object? lastFrame = freezed,
  }) {
    return _then(_value.copyWith(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Duration,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      lastFrame: lastFrame == freezed
          ? _value.lastFrame
          : lastFrame // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
abstract class _$FramesCopyWith<$Res> implements $FramesCopyWith<$Res> {
  factory _$FramesCopyWith(_Frames value, $Res Function(_Frames) then) =
      __$FramesCopyWithImpl<$Res>;
  @override
  $Res call({Duration position, Duration duration, Duration lastFrame});
}

/// @nodoc
class __$FramesCopyWithImpl<$Res> extends _$FramesCopyWithImpl<$Res>
    implements _$FramesCopyWith<$Res> {
  __$FramesCopyWithImpl(_Frames _value, $Res Function(_Frames) _then)
      : super(_value, (v) => _then(v as _Frames));

  @override
  _Frames get _value => super._value as _Frames;

  @override
  $Res call({
    Object? position = freezed,
    Object? duration = freezed,
    Object? lastFrame = freezed,
  }) {
    return _then(_Frames(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Duration,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      lastFrame: lastFrame == freezed
          ? _value.lastFrame
          : lastFrame // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_Frames extends _Frames {
  const _$_Frames(
      {this.position = Duration.zero,
      this.duration = Duration.zero,
      this.lastFrame = Duration.zero})
      : super._();

  @JsonKey(defaultValue: Duration.zero)
  @override
  final Duration position;
  @JsonKey(defaultValue: Duration.zero)
  @override
  final Duration duration;
  @JsonKey(defaultValue: Duration.zero)
  @override
  final Duration lastFrame;

  @override
  String toString() {
    return 'Frames(position: $position, duration: $duration, lastFrame: $lastFrame)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Frames &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.lastFrame, lastFrame) ||
                const DeepCollectionEquality()
                    .equals(other.lastFrame, lastFrame)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(lastFrame);

  @JsonKey(ignore: true)
  @override
  _$FramesCopyWith<_Frames> get copyWith =>
      __$FramesCopyWithImpl<_Frames>(this, _$identity);
}

abstract class _Frames extends Frames {
  const factory _Frames(
      {Duration position, Duration duration, Duration lastFrame}) = _$_Frames;
  const _Frames._() : super._();

  @override
  Duration get position => throw _privateConstructorUsedError;
  @override
  Duration get duration => throw _privateConstructorUsedError;
  @override
  Duration get lastFrame => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FramesCopyWith<_Frames> get copyWith => throw _privateConstructorUsedError;
}
