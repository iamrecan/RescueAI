import 'package:flutter/material.dart';

import 'areaView_page.dart';
import 'home_page.dart';
import 'map_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigationPage(),
    );
  }
}

class NavigationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LaunchState();
  }
}

class LaunchState extends State<NavigationPage> {
  int selectedPage = 0;
  var _screens = [
    HomePage(),
    RunPage(),
    CameraPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedPage,
        selectedItemColor: Colors.red,
        onTap: (index) {
          setState(() {
            selectedPage = index;
          });
        },
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              title: Text('Home'),
              icon: Icon(Icons.home),
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
            title: Text('Area View'),
            icon: Icon(
              Icons.cast_rounded,
            ),
          ),
          BottomNavigationBarItem(
            title: Text('Map'),
            icon: Icon(Icons.map_outlined),
          ),
        ],
      ),
    );
  }
}
