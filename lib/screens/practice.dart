import 'dart:developer';

import 'package:flutter/material.dart';
import "../globals.dart";
import '../shared/shared.dart';

class PracticeScreen extends StatefulWidget {
  @override
  _PracticeScreenState createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen> {
  int _topBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                child: createFlatButton(0, "Routines"),
              ),
              Container(
                width: 150,
                child: createFlatButton(1, "Exercises"),
              ),
            ],
          ),
          _topBarIndex == 0 ? ExerciseList() : Text("Routines"),
        ],
      ),
    );
  }

  Widget createFlatButton(int position, String text) {
    RoundedRectangleBorder buttonShape = RoundedRectangleBorder(
        borderRadius: position == 0
            ? BorderRadius.horizontal(left: Radius.elliptical(50, 50))
            : BorderRadius.horizontal(right: Radius.elliptical(50, 50)));

    return FlatButton(
      color: _topBarIndex == position ? mainOrange : Colors.white,
      shape: buttonShape,
      onPressed: () => onTabPress(position),
      child: _topBarIndex == position
          ? TabHeading(text, Colors.white, Colors.black)
          : TabHeading(text, Colors.black, Colors.black),
    );
  }

  onTabPress(int index) {
    setState(() {
      _topBarIndex = index;
    });
  }
}
