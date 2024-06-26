import 'package:flutter/material.dart';

class ActorDescription extends StatelessWidget {
  const ActorDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 22),
      child: Column(
        children: [
          Row(
            children: [
              Text("Actor Name", style: TextStyle(color: Colors.black)),
            ],
          ),
          Row(
            children: [
              Text("Indian Actress", style: TextStyle(color: Colors.grey)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(
                    Icons.duo,
                    color: Colors.grey,
                    size: 15,
                  ),
                ),
                Text("Duration 20 Mins", style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.monetization_on_outlined,
                  color: Colors.grey,
                  size: 15,
                ),
              ),
              Text("Total Average Fees \u{20B9}",
                  style: TextStyle(color: Colors.grey)),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text("About", style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, right: 16),
            child: Text(
                "I doubt I can. It’s a major part of many, many words. Omitting it is as hard as making muffins without flour. It’s as hard as spitting without saliva, napping without a pillow, driving a train without tracks, sailing to Russia without a boat, washing your hands without soap, or shitting without a butt. And, anyway, what would I gain? An award? A cash bonus? Bragging rights? Why should I strain my brain?"
                " It’s not worth doing. Now, a grammatical paragraph without",
                style: TextStyle(color: Colors.grey)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0,right:8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("See More", style: TextStyle(color: Colors.blueAccent)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
