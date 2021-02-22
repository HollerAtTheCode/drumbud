import 'package:drumbud/screens/metronome.dart';
import 'package:drumbud/screens/practice.dart';
import 'package:drumbud/screens/screens.dart';
import 'package:flutter/material.dart';
import 'shared/shared.dart';
import "globals.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DRUMBUD',
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.white,
          accentColor: Color(0xFFF77702),
          fontFamily: 'Harvest',
          // Text Theme
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
          )),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static List _mainPageOptions = [
    PracticeScreen(),
    MetronomeScreen(),
    TrackingScreen(),
  ];

  void _onBarItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/img/title.png',
              height: 30,
            )
          ],
        ),
        backgroundColor: lightGrey,
      ),
      body: _mainPageOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onBarItemTapped,
        backgroundColor: darkGrey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedIndex == 0
                  ? "assets/img/icons/tabbar/practice.png"
                  : "assets/img/icons/tabbar/practice_dark.png",
              width: 50,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedIndex == 1
                  ? "assets/img/icons/tabbar/metronome.png"
                  : "assets/img/icons/tabbar/metronome_dark.png",
              width: 50,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedIndex == 2
                  ? "assets/img/icons/tabbar/tracking.png"
                  : "assets/img/icons/tabbar/tracking_dark.png",
              width: 50,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
