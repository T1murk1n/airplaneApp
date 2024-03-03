import 'package:flutter/material.dart';
import 'package:fly/pages/style.dart';

class SubMenu extends StatefulWidget {
  const SubMenu({super.key});

  @override
  State<SubMenu> createState() => _SubMenuState();
}

class _SubMenuState extends State<SubMenu> {
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
                      Text('Выберите модель возгарания:', style: TextStyle( fontSize: 54, fontWeight: FontWeight.w600,fontFamily: 'Roboto',color: Colors.white,),),
                      const SizedBox(height: 60),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/left_engine');
                        },
                        style: mainButton,
                        child: Text('пожар левого двигателя', style: textButton),
                      ),
                      const SizedBox(height: 30),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/video');
                        },
                        style: mainButton,
                        child: Text('пожар переднего багажного отсека', style: textButton),
                      ),
                      const SizedBox(height: 30),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/train');
                        },
                        style: mainButton,
                        child: Text('пожар заднего багажного отсека', style: textButton),
                      ),
                      const SizedBox(height: 30),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/video');
                        },
                        style: mainButton,
                        child: Text('пожар ВСУ', style: textButton),
                      ),
                      const SizedBox(height: 30),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/video');
                        },
                        style: mainButton,
                        child: Text('Пожар правого двигателя', style: textButton),
                      ),
                    ],
                  ),
                ],
              ),
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
