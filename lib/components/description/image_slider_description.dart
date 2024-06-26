import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class ImageSliderDescription extends StatelessWidget {
  ImageSliderDescription({super.key, required this.onShare});
  final VoidCallback onShare;
  final items = [
    Image.asset(
      'assets/images/scene.jpeg',
      fit: BoxFit.fitHeight,
    ),
    Image.asset(
      'assets/images/scenetwo.jpeg',
      fit: BoxFit.fitHeight,
    ),
    Image.asset(
      'assets/images/scenethree.jpeg',
      fit: BoxFit.fitHeight,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          child: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            leading: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
            title: Text(
              "Description",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.62,
            decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8))),
            child: Stack(children: [
              Column(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: false,
                      viewportFraction: 1,
                      height: MediaQuery.of(context).size.height * 0.55,
                      //    aspectRatio: 2.0,
                      //      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {},
                    ),
                    items: getWidgets(context),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.energy_savings_leaf,
                          color: Colors.black,
                          size: 30,
                        ),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                          size: 30,
                        ),
                        Icon(
                          Icons.anchor,
                          color: Colors.black,
                          size: 30,
                        ),
                        Icon(
                          Icons.square,
                          color: Colors.black,
                          size: 30,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.black,
                          size: 30,
                        ),
                        GestureDetector(
                          onTap: onShare,
                          child: Icon(
                            Icons.share,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  )

                  /*DotsIndicator(
                    dotsCount: items.length,
                    // position: _current.toDouble(),
                    decorator: DotsDecorator(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      size: Size(10, 10),
                    ),
                  )*/
                ],
              ),
              Positioned(
                left: 140,
                bottom: 100,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: DotsIndicator(
                    dotsCount: items.length,
                    // position: _current.toDouble(),
                    decorator: DotsDecorator(
                      color: Colors.white54,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      activeColor: Colors.white,
                      activeSize: Size(15, 15),
                      size: Size(15, 15),
                    ),
                  ),
                ),
              )
            ]),
          ),
        ),
      ],
    );
  }

  List<Widget> getWidgets(BuildContext context) {
    return items.map((imageUrl) {
      return Stack(
        children: [
          Container(
            width: double.infinity,
            height:
                MediaQuery.of(context).size.height * 0.55, // Match parent width
            child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0), child: imageUrl),
          ),
        ],
      );
    }).toList();
  }
}
