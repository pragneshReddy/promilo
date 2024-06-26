import 'package:flutter/material.dart';
import 'package:promilo/ui/description.dart';

class TrendingMeetups extends StatelessWidget {
  TrendingMeetups({super.key, required this.onDescription});
  final VoidCallback onDescription;
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
          padding: const EdgeInsets.only(bottom: 8.0,top:22,left: 16),
          child: Row(
            children: [
              Text(
                "Top Trending Meetups",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.23,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return getCards(context, index);
              }),
        )
      ],
    );
  }

  Widget getCards(BuildContext context, int index) {
    return GestureDetector(
      onTap: (){
       // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Description()));
      onDescription();

      },
      child: Padding(
          padding: const EdgeInsets.only(right: 2.0, left: 16),
          child: Container(
              child: Column(children: [
                Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 8),
                    child: Row(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          width:MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.20,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(image: items[index], fit: BoxFit.cover)),
                        ),
                      )
                    ]))
              ]))),
    );
  }
}
