import 'package:flutter/material.dart';
import 'package:fly/pages/style.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                     /* CarouselSlider.builder(
                          itemCount: 4,
                          itemBuilder: (context, index, realIndex) {
                            return Column(
                              children: [
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
                                    Navigator.pushNamed(context, '/video');
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
                            );
                          },
                          carouselController: controller,
                          options: CarouselOptions(
                            viewportFraction: 0.8,
                            height: 90,
                            scrollDirection: Axis.vertical,
                            initialPage: 0,
                            enableInfiniteScroll: false,
                            enlargeCenterPage: true,
                          )
                      ),*/
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
                          Navigator.pushNamed(context, '/video');
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
          ),
        ]



      ),
    );
  }
}
