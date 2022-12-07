import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  int activeIndex = 0;
  final myImages = [
    "assets/images/b2.png",
    "assets/images/cS.png",
    "assets/images/sC.png",
  ];
  final myTexts = [
    'Software Solutions',
    'Business Digitization',
    'Client Support',
  ];
  @override
  Widget build(BuildContext context) {
    Widget buildIndicator() => AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: myImages.length,
        );
    Widget buildImage(String myImage, String mytext, int index) => Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 12),
        color: Colors.grey,
        child: Stack(
          children: [
            Image.asset(
              myImage,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: Text(
                mytext,
                style: const TextStyle(
                  fontSize: 35,
                  // fontFamily: 'RobotoMono',
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ));
    return Center(
      child: Column(
        children: [
          CarouselSlider.builder(
            itemCount: myImages.length,
            itemBuilder: (context, index, realIndex) {
              final myImage = myImages[index];
              final myText = myTexts[index];
              return buildImage(myImage, myText, index);
            },
            options: CarouselOptions(
                autoPlay: true,
                height: 400,
                autoPlayInterval: const Duration(seconds: 6),
                onPageChanged: ((index, reason) {
                  setState(() {
                    activeIndex = index;
                  });
                })
                // viewportFraction: 1,
                ),
          ),
          const SizedBox(
            height: 32,
          ),
          buildIndicator(),
        ],
      ),
    );
  }
}
