import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:video_bloc/video_bloc.dart';

import 'action_toolbar.dart';
import 'bottom_bar.dart';

final _videos = <TikTokVideo>[
  TikTokVideo(
    title: 'Video 1',
    comments: '143',
    likes: '3223',
    song: 'Song 1 - Artist 1',
    user: 'User 1',
    userPic:
        'https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg',
    source:
        'https://firebasestorage.googleapis.com/v0/b/videostreaming-test.appspot.com/o/vid%2FSnaptik_6745671851688692998_tiktok.mp4?alt=media&token=e6c76be2-9d8e-4be6-aedc-89ddd4985871',
  ),
  TikTokVideo(
    user: 'User 2',
    userPic:
        'https://i.pinimg.com/originals/5e/eb/8d/5eeb8d615bea040425f9937699392751.jpg',
    title: 'Video 2',
    song: 'Song 2 - Artist 2',
    likes: '3223',
    comments: '143',
    source:
        'https://firebasestorage.googleapis.com/v0/b/videostreaming-test.appspot.com/o/vid%2FSnaptik_6842407707551599878_carlos-barrios%20(1).mp4?alt=media&token=965f5080-2771-4477-bd9d-defc7b581c5d',
  )
];

class TikTokVideo {
  TikTokVideo({
    required this.user,
    required this.userPic,
    required this.title,
    required this.song,
    required this.likes,
    required this.comments,
    required this.source,
  });

  final String user;
  final String userPic;
  final String title;
  final String song;
  final String likes;
  final String comments;
  final String source;
}

class VideoProvider extends InheritedWidget {
  const VideoProvider({
    Key? key,
    required this.video,
    required Widget child,
  }) : super(key: key, child: child);

  final TikTokVideo video;

  static TikTokVideo of(BuildContext context) {
    final res = context.dependOnInheritedWidgetOfExactType<VideoProvider>();
    assert(res != null, 'No Video found in context');
    return res!.video;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return false;
  }
}

class TikTokFeed extends StatelessWidget {
  const TikTokFeed({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: const [
          Expanded(child: FeedVideo()),
          BottomBar(),
        ],
      ),
    );
  }
}

class FeedVideo extends StatefulWidget {
  const FeedVideo({
    Key? key,
  }) : super(key: key);

  @override
  _FeedVideoState createState() => _FeedVideoState();
}

class _FeedVideoState extends State<FeedVideo> {
  final _pageController = PageController(initialPage: 0, viewportFraction: 1);

  int _index = 0;
  set index(int value) {
    if (_index == value) return;
    setState(() => _index = value);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          controller: _pageController,
          itemCount: _videos.length,
          onPageChanged: (index) {
            index = index % _videos.length;
            index = index;
          },
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            index = index % _videos.length;
            return VideoCard(video: _videos[index]);
          },
        ),
        SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Following',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(width: 7),
                Container(color: Colors.white70, height: 10, width: 1.0),
                SizedBox(width: 7),
                Text(
                  'For You',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VideoCard extends StatelessWidget {
  const VideoCard({
    Key? key,
    required this.video,
  }) : super(key: key);

  final TikTokVideo video;

  @override
  Widget build(BuildContext context) {
    return VideoScope(
      source: video.source,
      autoPlay: true,
      child: VideoProvider(
        video: video,
        child: Stack(
          children: [
            Player(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    VideoDescription(),
                    ActionsToolbar(),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Player extends StatelessWidget {
  const Player({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final video = VideoBloc.of(context);

    return GestureDetector(
      onTap: () => VideoBloc.of(context).togglePlay(),
      child: VideoConsumer<VideoStatus>(
        select: (state) => state.status,
        builder: (context, status) => AnimatedSwitcher(
          duration: Duration(milliseconds: 300),
          child: status.isInitialized
              ? SizedBox.expand(
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: SizedBox(
                      width: video.controller.value.size.width,
                      height: video.controller.value.size.height,
                      child: VideoPLayer(),
                    ),
                  ),
                )
              : Container(
                  constraints: BoxConstraints.expand(),
                  alignment: Alignment.center,
                  child: Text('Loading', style: TextStyle(color: Colors.white)),
                ),
        ),
      ),
    );
  }
}

class VideoDescription extends StatelessWidget {
  const VideoDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final video = VideoProvider.of(context);

    return Expanded(
      child: Container(
        height: 120.0,
        padding: EdgeInsets.only(left: 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '@' + video.user,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 7),
            Text(
              video.title,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 7),
            Row(
              children: [
                Icon(Icons.music_note, size: 15.0, color: Colors.white),
                Text(
                  video.song,
                  style: TextStyle(color: Colors.white, fontSize: 14.0),
                )
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
