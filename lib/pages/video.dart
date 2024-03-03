import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';
import 'package:fly/pages/style.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override

  List<FlickManager> videos = [
    FlickManager(videoPlayerController: VideoPlayerController.asset('assets/video/X-System.mp4',),),
  ];


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Система пожаротушения SSJ -100'),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body:
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 0.0, bottom: 0.0, left: 0, right: 0),
              child: ListView.builder(
                    itemCount: videos.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          AspectRatio(
                            aspectRatio: 16/9,
                            child: FlickVideoPlayer(flickManager: videos[index]),
                          ),
                          const SizedBox(height: 25,)
                        ],
                      );
                    }
                ),
            ),
          ),
    );
  }
}
