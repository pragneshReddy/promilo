import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class SliderPromilo extends StatelessWidget {
  SliderPromilo({super.key, required this.mWidth, required this.mHeight});

  final mWidth;
  final mHeight;
  final items = [
    Image.asset(
      'assets/images/scene.jpeg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/scenetwo.jpeg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/scenethree.jpeg',
      fit: BoxFit.cover,
    ),
  ];

  List<Widget> getWidgets() {
    return items.map((imageUrl) {
      return Stack(
        children: [
          Container(
            width: double.infinity, // Match parent width
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0), child: imageUrl),
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 32.0, bottom: 16),
                child: Text(
                  "Popular Meetups \n in India",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ))
        ],
      );
    }).toList();
  }

//https://stackoverflow.com/questions/75938308/how-to-make-dot-indicator-carousel-slider-in-flutter-using-different-shape
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 32),
      child: Container(
        width: mWidth,
        height: mHeight,
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: false,
                viewportFraction: 1,
                //    aspectRatio: 2.0,
                //      enlargeCenterPage: true,
                onPageChanged: (index, reason) {},
              ),
              items: getWidgets(),
            ),
            DotsIndicator(
              dotsCount: items.length,
              // position: _current.toDouble(),
              decorator: DotsDecorator(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                size: Size(10, 10),
              ),
            )
          ],
        ),
      ),
    );
  }
}
