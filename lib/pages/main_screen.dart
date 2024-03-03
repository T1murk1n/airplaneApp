import 'package:flutter/material.dart';
import 'package:fly/pages/style.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/back.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Система пожаротушения SSJ -100', style: TextStyle( fontSize: 54, fontWeight: FontWeight.w600,fontFamily: 'Roboto',color: Colors.white,),),
                      const SizedBox(height: 60),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/video');
                        },
                        style: mainButton,
                        child: Text('Демонстрация', style: textButton),
                      ),
                      const SizedBox(height: 30),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/sub_menu');
                        },
                        style: mainButton,
                        child: Text('Видео по шагам', style: textButton),
                      ),
                      const SizedBox(height: 30),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/train');
                        },
                        style: mainButton,
                        child: Text('Демонстрация по шагам', style: textButton),
                      ),
                      const SizedBox(height: 30),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/video');
                        },
                        style: mainButton,
                        child: Text('Случайное возгарание', style: textButton),
                      ),
                    ],
                  ),
                ],
              ),
            ),
        ]
      ),
    );
  }
}
