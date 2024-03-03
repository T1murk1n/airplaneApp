import 'package:flutter/material.dart';
import 'package:fly/pages/main_screen.dart';
import 'package:fly/pages/video.dart';
import 'package:fly/pages/train.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/main',
    routes: {
      '/video': (context) => const VideoPage(),
      '/main': (context) => const MainScreen(),
      '/train': (context) => const TrainPage(),
    }
  ));
}