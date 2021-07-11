import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'tiktok/tiktok_feed.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xffA2845E),
      ),
      home: TikTokFeed(),
    );
  }
}
