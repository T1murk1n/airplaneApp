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
        title: const Text('Видео'),
        centerTitle: true,
        toolbarHeight: 120,
      ),
      body: Stack(
        children: [
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("images/background.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Center(
            child: ConstrainedBox(
                constraints: BoxConstraints.tightFor(width: 1000),
              child: Container(
                color: Colors.white,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100.0, bottom: 16.0, left: 20, right: 20),
              child: ConstrainedBox(
                constraints: BoxConstraints.tightFor(width: 800),
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
          ),
        ],
      ),
    );
  }
}
