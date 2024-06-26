import 'package:flutter/material.dart';
import 'package:promilo/components/home_page/slider.dart';
import 'package:promilo/components/home_page/trending_meetups.dart';

import '../components/home_page/search.dart';
import '../components/home_page/trends.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.onDescription});
  final VoidCallback onDescription;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
   var heigth = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(children: [
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
          title: Text("Individual Meetup", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        ),),
          Search(onEditingComplete: onTextChange,),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: SliderPromilo(mWidth: MediaQuery.of(context).size.width, mHeight: MediaQuery.of(context).size.height*0.3),
          ),
        
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Trends(),
          ),
          TrendingMeetups(onDescription:widget.onDescription)
        
        ],),
      ),
    );
  }

  onTextChange(){

  }
}
