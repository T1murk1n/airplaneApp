import 'package:flutter/material.dart';
import 'package:fly/pages/main_screen.dart';
import 'package:fly/pages/video.dart';
import 'package:fly/pages/train.dart';
import 'package:fly/pages/sub_menu.dart';
import 'package:fly/pages/sliderShow/leftEngine.dart';
import 'package:fly/pages/sliderShow/rightEngine.dart';
import 'package:fly/pages/sliderShow/vsu.dart';
import 'package:fly/pages/sliderShow/fb.dart';
import 'package:fly/pages/sliderShow/sb.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/main',
    routes: {
      '/video': (context) => const VideoPage(),
      '/main': (context) => const MainScreen(),
      '/train': (context) => const TrainPage(),
      '/sub_menu': (context) => const SubMenu(),
      '/left_engine': (context) => const LE(),
      '/right_engine': (context) => const RE(),
      '/vsu': (context) => const VSU(),
      '/fb': (context) => const FB(),
      '/sb': (context) => const SB(),
    }
  ));
}