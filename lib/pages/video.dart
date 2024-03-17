import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';
import 'package:fly/pages/style.dart';

import 'package:video_player_win/video_player_win.dart';
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
  @override
  /*void initState() {
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
  }*/

 void initState() {
   super.initState();
   controller = VideoPlayerController.file(File("C:\\video.mp4"));
   controller.initialize().then((value) {
     if (controller.value.isInitialized) {

       setState(() {});
       controller.play();
     } else {
       log("video file load failed");
     }
   });
 }
  @override
  /*void dispose() {
    flickManager.dispose();
    super.dispose();
  }*/
 void dispose() {
   super.dispose();
   controller.dispose();
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      
      Stack(
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
                  return Text("$minute:$second/8:13", style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white, backgroundColor: Colors.black54));
                }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              OutlinedButton(
                        onPressed: () => controller.play(),
                        style: usualButton,
                        child: Text('Запустить', style: text),
                      ),
              const SizedBox(width: 12,),
              OutlinedButton(
                onPressed: () => controller.pause(),
                style: usualButton,
                child: Text('Пауза', style: text),
              ),
              const SizedBox(width: 12,),
              OutlinedButton(
                onPressed: () => controller.seekTo(Duration(milliseconds: controller.value.position.inMilliseconds+ 10*1000)),
                style: usualButton,
                child: Text('Перемотать вперед', style: text),
              ),
              const SizedBox(width: 12,),
              OutlinedButton(
                onPressed: () => controller.seekTo(Duration(milliseconds: controller.value.position.inMilliseconds-10*1000)),
                style: usualButton,
                child: Text('Перемотать назад', style: text),
              ),
                ],
              ),
            const SizedBox(height: 12,),
              


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


/*

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

*/


    );
  }
}