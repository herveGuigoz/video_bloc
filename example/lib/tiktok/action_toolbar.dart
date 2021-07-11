import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:example/tiktok/_tiktok.dart';
import 'package:flutter/material.dart';
import 'package:video_bloc/video_bloc.dart';

import 'icons.dart';

// Full dimensions of an action
const double ActionWidgetSize = 60.0;

// The size of the icon shown for Social Actions
const double ActionIconSize = 35.0;

// The size of the profile image in the follow Action
const double _kProfileImageSize = 50.0;

// The size of the plus icon under the profile image in follow action
const double _kPlusIconSize = 20.0;

const LinearGradient _kMusicGradient = LinearGradient(
  colors: [
    Color(0xFF424242),
    Color(0xFF212121),
    Color(0xFF212121),
    Color(0xFF424242)
  ],
  stops: [0.0, 0.4, 0.6, 1.0],
  begin: Alignment.bottomLeft,
  end: Alignment.topRight,
);

class ActionsToolbar extends StatelessWidget {
  const ActionsToolbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final video = VideoProvider.of(context);

    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const FollowAction(),
          SocialAction(icon: TikTokIcons.heart, title: video.likes),
          SocialAction(icon: TikTokIcons.chat_bubble, title: video.comments),
          SocialAction(icon: TikTokIcons.reply, title: 'Share', isShare: true),
          CircleImageAnimation(child: MusicPlayerAction())
        ],
      ),
    );
  }
}

class SocialAction extends StatelessWidget {
  const SocialAction({
    Key? key,
    required this.title,
    required this.icon,
    this.isShare = false,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final bool isShare;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.0),
      child: Column(
        children: [
          Icon(icon, size: isShare ? 25.0 : 35.0, color: Colors.grey[300]),
          Padding(
            padding: EdgeInsets.only(top: isShare ? 8.0 : 8.0),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: isShare ? 14.0 : 14.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class FollowAction extends StatelessWidget {
  const FollowAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final video = VideoProvider.of(context);

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      width: 60.0,
      height: 60.0,
      child: Stack(
        children: [
          ProfilePicture(image: video.userPic),
          PlusIcon(),
        ],
      ),
    );
  }
}

class PlusIcon extends StatelessWidget {
  const PlusIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: ((ActionWidgetSize / 2) - (_kPlusIconSize / 2)),
      child: Container(
        width: _kPlusIconSize, // PlusIconSize = 20.0;
        height: _kPlusIconSize, // PlusIconSize = 20.0;
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 43, 84),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Icon(Icons.add, color: Colors.white, size: 20.0),
      ),
    );
  }
}

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: (ActionWidgetSize / 2) - (_kProfileImageSize / 2),
      child: Container(
        padding: EdgeInsets.all(1.0), // Add 1.0 point padding to create border
        height: _kProfileImageSize, // ProfileImageSize = 50.0;
        width: _kProfileImageSize, // ProfileImageSize = 50.0;
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(_kProfileImageSize / 2),
        ),
        // import 'package:cached_network_image/cached_network_image.dart'; at the top to use CachedNetworkImage
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10000.0),
          child: CachedNetworkImage(
            imageUrl: image,
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}

class MusicPlayerAction extends StatelessWidget {
  const MusicPlayerAction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final video = VideoProvider.of(context);

    return Container(
      margin: EdgeInsets.only(top: 10.0),
      width: ActionWidgetSize,
      height: ActionWidgetSize,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(11.0),
            height: _kProfileImageSize,
            width: _kProfileImageSize,
            decoration: BoxDecoration(
              gradient: _kMusicGradient,
              borderRadius: BorderRadius.circular(_kProfileImageSize / 2),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10000.0),
              child: CachedNetworkImage(
                imageUrl: video.userPic,
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CircleImageAnimation extends StatefulWidget {
  CircleImageAnimation({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  _CircleImageAnimationState createState() => _CircleImageAnimationState();
}

class _CircleImageAnimationState extends State<CircleImageAnimation>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late final StreamSubscription _subscription;
  late VideoStatus _status;

  void _subscribe() {
    final bloc = VideoBloc.of(context);
    _status = bloc.state.status;
    _subscription = bloc.select((state) => state.status).listen((event) {
      if (_status == event) return;
      if (event.isPlaying) {
        _controller.forward();
        _controller.repeat();
      } else {
        _controller.stop();
      }
      _status = event;
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 5000),
      vsync: this,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _subscribe();
  }

  @override
  void dispose() {
    _subscription.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
      child: widget.child,
    );
  }
}
