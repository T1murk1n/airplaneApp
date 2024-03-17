/*import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';
import 'package:fly/pages/style.dart';

import 'package:video_player_win/video_player_win.dart';
import 'package:video_player/video_player.dart';
import 'dart:io';
import 'dart:developer';



class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
 late FlickManager flickManager;
 late VideoPlayerController controller;
 //var controller = VideoPlayerController.network("https://www.your-web.com/sample.mp4");
  @override
  void initState() {
    /*Process.run('E:\\K-Lite_Codec_Pack_1730_Basic.exe', ['/silent']).then((value) {
      if (value.exitCode == 0) log("installation success");
      else log("installation failed");
    });*/
    controller.initialize().then((value) {
      if (controller.value.isInitialized) {
        controller.play();
      } else {
        log("video file load failed");
      }
    }).catchError((e) {
      log("controller.initialize() error occurs: $e");
    });
    super.initState();

    flickManager = FlickManager(videoPlayerController: VideoPlayerController.asset('assets/video/video.mp4',));
  }

 /*void initState() {
   super.initState();
   //controller = VideoPlayerController.file(File("C:\\video.mp4"));
   controller = VideoPlayerController.asset("assets/video/video.mp4");
   controller.initialize().then((value) {
     if (controller.value.isInitialized) {

       setState(() {});
       controller.play();
     } else {
       log("video file load failed");
     }
   });
 }*/
  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }
 /*void dispose() {
   super.dispose();
   controller.dispose();
 }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      
      /*Stack(
          children: [
        VideoPlayer(controller),
        Positioned(
            bottom: 0,
            child: Column(children: [
              ValueListenableBuilder(
                valueListenable: controller,
                builder: ((context, value, child) {
                  int minute = controller.value.position.inMinutes;
                  int second = controller.value.position.inSeconds % 60;
                  return Text("$minute:$second", style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white, backgroundColor: Colors.black54));
                }),
              ),
              ElevatedButton(onPressed: () => controller.play(), child: const Text("Play")),
              ElevatedButton(onPressed: () => controller.pause(), child: const Text("Pause")),
              ElevatedButton(onPressed: () => controller.seekTo(Duration(milliseconds: controller.value.position.inMilliseconds+ 10*1000)), child: const Text("Forward")),
            ])
        ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                    shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular((20))
                        )
                    )
                ),
                child: Text('Назад', style: textButton),
              ),
            ),
      ]
      ),
*/



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
*/import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
    debugShowCheckedModeBanner: false,
      title: 'Video Player Demo',
      home: MyVideoPlayer(),
    );
  }
}

class MyVideoPlayer extends StatefulWidget {
  @override
  _MyVideoPlayerState createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.network(
      //'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      'https://disk.yandex.ru/client/disk?idApp=client&dialog=slider&idDialog=%2Fdisk%2FОбучающий%202.mp4'
    );
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      looping: true,
      aspectRatio: 16 / 9, // Adjust as per your video's aspect ratio
      // Add other customization options here as needed
    );
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
    _chewieController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Stack(
        children:
        [ Center(
          child: Chewie(
            controller: _chewieController,
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
                      child: Text('Назад'),
                    ),
                  ),
        ]
      ),
    );
  }
}
