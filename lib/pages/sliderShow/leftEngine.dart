import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fly/pages/style.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LE extends StatefulWidget {
const LE({super.key});

@override
State<LE> createState() => _LEState();
}
dynamic arr = ["e1.jpg", "e2.jpg", "e3.jpg","e4.jpg", "e5.jpg", "e6.jpg","e7.jpg", "e8.jpg", "e9.jpg","e10.jpg", "e11.jpg", "e12.jpg","e13.jpg",];

class _LEState extends State<LE> {
final controller = CarouselController();
int currentIndex = 0;
@override
Widget build(BuildContext context) {
return Scaffold(

body:  Stack(
  children: [
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/back.png"),
          fit: BoxFit.fill,
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildIndicator(),
            CarouselSlider.builder(
              itemCount: arr.length,
              itemBuilder: (context, index, realIndex) {
                //final item = arrSituation[index];

                return buildText(index);
              },
              carouselController: controller,
              options: CarouselOptions(
                  height: 620,
                  initialPage: 0,
                  viewportFraction: 0.8,
                  enableInfiniteScroll: false,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      print(reason.toString());
                      currentIndex = index;
                    });
                  }
              ),

            ),
            SizedBox(height: 12,),
            buildButtons(),
          ],
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
  ],
),
);
}

Widget buildIndicator() => Padding(
  padding: const EdgeInsets.only(bottom: 16.0),
  child: AnimatedSmoothIndicator(
  activeIndex: currentIndex,
  count: arr.length,
  onDotClicked: animateToSlide,
  effect: SlideEffect(
  dotWidth: MediaQuery.of(context).size.width / (arr.length+4),
  dotHeight: 22,
  activeDotColor: Colors.white,
  dotColor: Colors.white54
  ),
  ),
);

Widget buildButtons({bool stretch = false}) => Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
  Container(
    width: 350,
    child: OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: currentIndex == 0 ? Colors.white54 : Colors.transparent,
        side: BorderSide(color: Colors.white, width: 3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28.0),
        ),
      ),
      onPressed: previous,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Предыдущий', style: textButton),
      ),
    ),
  ),
SizedBox(width: 40,),
  Container(
    width: 350,
    child: OutlinedButton(
      onPressed: next,
      style: OutlinedButton.styleFrom(
        backgroundColor: currentIndex == arr.length-1 ? Colors.white54 : Colors.transparent,
        side: BorderSide(color: Colors.white, width: 3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Далее', style: textButton),
      ),
    ),
  ),

],
);
void next() {
controller.nextPage();
}
void previous() {
controller.previousPage();
}
void animateToSlide(int index) => controller.animateToPage(index);

Widget buildText(int index) => Container(
    child: Image(image: AssetImage("assets/images/${arr[index]}"),)
  );
}