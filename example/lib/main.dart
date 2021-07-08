import 'package:flutter/material.dart';
import 'package:video_bloc/video_bloc.dart';

const _kVideoSource = [
  'https://clip-video-ngtv.s3.eu-west-3.amazonaws.com/35001_60907a857fc97985857045',
  'https://clip-video-ngtv.s3.eu-west-3.amazonaws.com/35001_6078a94859012373041229'
];

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _source = _kVideoSource.first;
  set source(String value) {
    setState(() {
      _source = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return VideoScope(
      source: _source,
      child: Scaffold(
        appBar: AppBar(title: const Text('Home page')),
        body: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: const [
                  VideoPLayer(),
                  ControlsOverlay(),
                ],
              ),
            ),
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
            if (_kVideoSource.length > 1)
              for (final value in _kVideoSource)
                ListTile(
                  title: Text(_kVideoSource.indexOf(value).toString()),
                  onTap: _source == value ? null : () => source = value,
                ),
          ],
        ),
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
