import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';
import 'package:fly/pages/style.dart';
import 'dart:io';
import 'dart:developer';

class TrainPage extends StatefulWidget {
  const TrainPage({super.key});

  @override
  State<TrainPage> createState() => _TrainPageState();
}

class _TrainPageState extends State<TrainPage> {
 late FlickManager flickManager;
 late VideoPlayerController controller;
  @override
 void initState() {
   super.initState();
   controller = VideoPlayerController.file(File("C:\\video_train.mp4"));
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
                  return Text("$minute:$second/15:19", style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white, backgroundColor: Colors.black54));
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
    );
  }
}