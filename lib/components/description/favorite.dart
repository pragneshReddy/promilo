import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22.0, right: 16, top: 8, bottom: 8),
      child: Row(
        children: [
          Icon(
            Icons.announcement_outlined,
            color: Colors.blueAccent,
            size: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 12),
            child: Text(
              "1034",
              style: TextStyle(color: Colors.black),
            ),
          ),
          Icon(
            Icons.favorite_border,
            color: Colors.blueAccent,
            size: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 12),
            child: Text(
              "1034",
              style: TextStyle(color: Colors.black),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .3,
            height: MediaQuery.of(context).size.height * 0.03,
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.blue,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Colors.blue,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Colors.blue,
                  size: 15,
                ),
                Opacity(
                  opacity: 0.3,
                  child: Icon(
                    Icons.star,
                    color: Colors.blue,
                    size: 15,
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 15,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Text(
              "3.2",
              style: TextStyle(color: Colors.blueAccent),
            ),
          )
        ],
      ),
    );
  }
}
