import 'package:flutter/material.dart';
import 'package:promilo/ui/description.dart';
import 'package:promilo/ui/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  bool isDescription = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:isDescription ? Description():HomePage(onDescription: onDescription,),
        bottomNavigationBar: Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.white,
        primaryColor: Colors.blueAccent,
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.black,
        currentIndex: 2,
        onTap: (index) {},
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,

            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Project',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Meetup',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            label: 'Account',
          ),
        ],
      ),
    ));

  }

  void onDescription() {

    setState(() {
      isDescription = true;
    });
  }
}
