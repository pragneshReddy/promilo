import 'package:flutter/material.dart';
import 'package:promilo/components/description/image_slider_description.dart';
import 'package:share_plus/share_plus.dart';

import '../components/description/actor_description.dart';
import '../components/description/favorite.dart';

class Description extends StatefulWidget {
  const Description({super.key});

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageSliderDescription(onShare: onSharePressed,),
        Favorite(),
            ActorDescription()
          ],
        
        ),
      ),
    );
  }

  void onSharePressed() {
Share.share("promilo");

  }
}
