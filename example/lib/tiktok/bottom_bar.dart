import 'dart:io';

import 'package:flutter/material.dart';

import 'icons.dart';

const double _kNavigationIconSize = 20.0;
const double _kCreateButtonWidth = 38.0;

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.0, bottom: Platform.isIOS ? 40 : 10),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.black12)),
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MenuButton(text: 'Home', icon: TikTokIcons.home, index: 0),
              MenuButton(text: 'Search', icon: TikTokIcons.search, index: 1),
              SizedBox(width: 15),
              CustomCreateIcon(),
              SizedBox(width: 15),
              MenuButton(
                  text: 'Messages', icon: TikTokIcons.messages, index: 2),
              MenuButton(text: 'Profile', icon: TikTokIcons.profile, index: 3)
            ],
          ),
        ],
      ),
    );
  }
}

class CustomCreateIcon extends StatelessWidget {
  const CustomCreateIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.0,
      height: 27.0,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10.0),
            width: _kCreateButtonWidth,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 250, 45, 108),
              borderRadius: BorderRadius.circular(7.0),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            width: _kCreateButtonWidth,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 32, 211, 234),
              borderRadius: BorderRadius.circular(7.0),
            ),
          ),
          Center(
            child: Container(
              height: double.infinity,
              width: _kCreateButtonWidth,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7.0),
              ),
              child: Icon(Icons.add, color: Colors.black, size: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.index,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 45,
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, color: Colors.white, size: _kNavigationIconSize),
            SizedBox(height: 7),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.white,
                fontSize: 11.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
