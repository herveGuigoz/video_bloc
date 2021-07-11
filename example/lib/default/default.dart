import 'package:flutter/material.dart';
import 'package:video_bloc/video_bloc.dart';

const _kVideoSource = [
  'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
  'https://firebasestorage.googleapis.com/v0/b/videostreaming-test.appspot.com/o/vid%2FSnaptik_6745671851688692998_tiktok.mp4?alt=media&token=e6c76be2-9d8e-4be6-aedc-89ddd4985871'
];

class DefaultPage extends StatefulWidget {
  const DefaultPage({Key? key}) : super(key: key);

  @override
  _DefaultPageState createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> {
  bool _showOverlay = true;
  set showOverlay(bool value) {
    if (value == _showOverlay) return;
    setState(() => _showOverlay = value);
  }

  String _source = _kVideoSource.first;
  set source(String value) {
    if (_source == value) return;
    setState(() => _source = value);
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = [
      AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          color: Colors.black,
          child: VideoThumbnail(
            imageSource: 'https://dummyimage.com/640x360/fff/aaa',
            child: _showOverlay
                ? Stack(
                    fit: StackFit.expand,
                    children: const [VideoPLayer(), ControlsOverlay()],
                  )
                : const VideoPLayer(),
          ),
        ),
      ),
      if (!_showOverlay) ...[
        VideoProgressIndicator(),
        Container(
          height: 60,
          width: double.infinity,
          padding: EdgeInsets.all(8.0),
          alignment: Alignment.centerLeft,
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              VideoPosition(),
              PlayPauseButton(),
              VideoDuration(),
            ],
          ),
        ),
      ]
    ];

    if (_kVideoSource.length > 1) {
      children.addAll([
        for (final value in _kVideoSource)
          ListTile(
            title: Text(_kVideoSource.indexOf(value).toString()),
            onTap: _source == value ? null : () => source = value,
          )
      ]);
    }

    return VideoScope(
      source: _source,
      autoPlay: false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home page'),
          actions: [
            Switch(
              inactiveTrackColor: Colors.white,
              activeTrackColor: Colors.white,
              value: _showOverlay,
              onChanged: (value) => showOverlay = value,
            )
          ],
        ),
        body: Column(children: children),
      ),
    );
  }
}

class PlayPauseButton extends StatelessWidget {
  const PlayPauseButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => VideoBloc.of(context).togglePlay(),
      child: VideoConsumer<VideoStatus>(
        select: (video) => video.status,
        builder: (context, status) => AnimatedPlayPause(
          status: status,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }
}

class VideoPosition extends StatelessWidget {
  const VideoPosition({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VideoConsumer<Duration>(
      select: (state) => state.frames.position,
      builder: (context, position) => Text(
        position.stringify,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class VideoDuration extends StatelessWidget {
  const VideoDuration({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VideoConsumer<Duration>(
      select: (state) => state.frames.duration,
      builder: (context, duration) => Text(
        duration.stringify,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
