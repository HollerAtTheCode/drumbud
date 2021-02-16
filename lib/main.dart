import 'package:flutter/material.dart';
import "colors.dart";

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
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Index 0: Practice'),
    Text('Index 0: Metronome'),
    Text('Index 0: Tracking'),
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
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onBarItemTapped,
        backgroundColor: darkGrey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
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
