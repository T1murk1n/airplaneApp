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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Приложение по тушению пожаров', style: titleText,),
                    const SizedBox(height: 100),
                    ElevatedButton(
                      style: buttonStyle,
                        onPressed: () {
                          Navigator.pushNamed(context, '/video');
                        },
                        child: Text('Видео', style: text,),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      style: buttonStyle,
                      onPressed: () {
                        Navigator.pushNamed(context, '/video');
                      },
                      child: Text('Видео', style: text,),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      style: buttonStyle,
                      onPressed: () {
                        Navigator.pushNamed(context, '/video');
                      },
                      child: Text('Видео', style: text,),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      style: buttonStyle,
                      onPressed: () {
                        Navigator.pushNamed(context, '/video');
                      },
                      child: Text('Видео', style: text,),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
