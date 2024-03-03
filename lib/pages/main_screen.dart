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
                image: AssetImage("images/background.png"),
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
                      Text('Приложение по тушению пожаров', style: titleText,),
                      const SizedBox(height: 100),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/video');
                        },
                        style: mainButton,
                        child: Text('Теория', style: textButton),
                      ),
                      const SizedBox(height: 30),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/video');
                        },
                        style: mainButton,
                        child: Text('Тестирование', style: textButton),
                      ),
                      const SizedBox(height: 30),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/train');
                        },
                        style: mainButton,
                        child: Text('Тренажер', style: textButton),
                      ),
                      const SizedBox(height: 30),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/video');
                        },
                        style: mainButton,
                        child: Text('Рандом', style: textButton),
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
