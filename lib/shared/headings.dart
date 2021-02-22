import 'package:drumbud/globals.dart';
import 'package:drumbud/models/exercise.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import '../shared/shared.dart';

class TabHeading extends StatelessWidget {
  final String title;
  final Color primaryColor;
  final Color secondaryColor;

  TabHeading(this.title, this.primaryColor, this.secondaryColor);

  @override
  Widget build(BuildContext context) {
    return BorderedText(
      strokeWidth: 0.0,
      strokeColor: secondaryColor,
      child: Text(
        title,
        style: TextStyle(
          color: primaryColor,
        ),
      ),
    );
  }
}

class ExerciseTitleLine extends StatelessWidget {
  final Exercise _exercise;
  ExerciseTitleLine(this._exercise);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        _exercise.name,
        style: tileHeading,
      ),
    );
  }
}
