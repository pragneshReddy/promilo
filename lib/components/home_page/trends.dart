import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';

class Trends extends StatelessWidget {
  Trends({super.key});

  final items = [
    ExactAssetImage(
      'assets/images/scene.jpeg',
    ),
    ExactAssetImage(
      'assets/images/scenetwo.jpeg',
    ),
    ExactAssetImage(
      'assets/images/scenethree.jpeg',
    ),
    ExactAssetImage(
      'assets/images/scenethree.jpeg',
    ),
    ExactAssetImage(
      'assets/images/scenethree.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0, left: 16),
          child: Row(
            children: [
              Text(
                "Trending Popular People",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          height:MediaQuery.of(context).size.height * 0.23,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return getCards(context);
              }),
        )
      ],
    );
  }

  Widget getCards(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 16),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.circle),
                    child: Icon(
                      Icons.energy_savings_leaf,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Author",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "1,028 Meetups",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  FlutterImageStack.providers(
                    providers: items,
                    showTotalCount: true,
                    totalCount: 5,
                    itemRadius: 40,
                    // Radius of each images
                    itemCount: 5,
                    // Maximum number of images to be shown in stack
                    itemBorderWidth: 0, // Border width around the images
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8, right: 16,top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      onPressed: onPressed,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                      child: Text("See more", style: TextStyle(color: Colors.white))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  onPressed() {}
}
