class Exercise {
  int id;
  String name;
  int bpm;
  ExerciseStatus status;
  String note = "";

  Exercise(this.id, this.name, this.bpm, this.status, [this.note]);
}

enum ExerciseStatus { good, okay, sloppy }
