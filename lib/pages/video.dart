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
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();

    flickManager = FlickManager(videoPlayerController: VideoPlayerController.asset("assets/images/vid.mp4",));
  }
  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
              Stack(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0.0, bottom: 0.0, left: 0, right: 0),
                      child:
                                AspectRatio(
                                  aspectRatio: 16/9,
                                  child: FlickVideoPlayer(flickManager: flickManager),
                                ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular((20))
                              )
                          )
                      ),
                      child: Text('Назад', style: textButton),
                    ),
                  ),
                ],
              ),
    );
  }
}
