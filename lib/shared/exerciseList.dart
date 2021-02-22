import 'package:drumbud/globals.dart';
import 'package:flutter/material.dart';
import 'package:drumbud/models/models.dart';
import 'package:drumbud/shared/shared.dart';
import 'package:flutter/widgets.dart';
import '../mock/mock.dart';

class ExerciseList extends StatefulWidget {
  @override
  _ExerciseListState createState() => _ExerciseListState();
}

class _ExerciseListState extends State<ExerciseList> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(canvasColor: Colors.transparent),
      child: ListView.separated(
        padding: EdgeInsets.only(top: 20.0, left: 10, right: 10),
        shrinkWrap: true,
        itemCount: exerciseMockList.length,
        itemBuilder: (context, index) {
          return _buildExerciseListTile(context, index);
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }

  Widget _buildExerciseListTile(BuildContext context, int index) {
    Exercise exercise = exerciseMockList[index];
    return ListTile(
      tileColor: midGrey,
      dense: true,
      key: Key(exercise.id.toString()),
      title: ExerciseTitleLine(exercise),
    );
  }
}
