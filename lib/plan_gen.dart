//first push to plan gen translate branch

//class to represent a workout for the running activity
class RunWorkout {
  String type; //normal run or workout
  String version; //time or distance
  double volume; //minutes, miles, meters, or seconds
  String intensity; //easy, hard, tempo, etc. ('none' if not applicable)
  double reps; //how many reps of the workout (0 if not applicable)
  RunWorkout(this.type, this.version, this.volume, this.intensity, this.reps);
}

//class to represent a week of a training plan (i.e. 7 workouts)
class Week {
  //establish all the days of the week as RunWorkout objects
  late RunWorkout day1;
  late RunWorkout day2;
  late RunWorkout day3;
  late RunWorkout day4;
  late RunWorkout day5;
  late RunWorkout day6;
  late RunWorkout day7;
  Week(this.day1, this.day2, this.day3, this.day4, this.day5, this.day6,
      this.day7);
}

//this is a dummy function for printing and testing
String testFunc() {
  var testDay1 = RunWorkout("run", "distance", 3.0, "easy", 0);
  var testDay2 = RunWorkout("run", "distance", 3.0, "tempo", 0);
  var testDay3 = RunWorkout("run", "distance", 3.0, "easy", 0);
  var testDay4 = RunWorkout("run", "distance", 3.0, "easy", 0);
  var testDay5 = RunWorkout("run", "distance", 3.0, "easy", 0);
  var testDay6 = RunWorkout("run", "distance", 3.0, "easy", 0);
  var testDay7 = RunWorkout("run", "distance", 3.0, "easy", 0);

  List<Week> plan = [
    Week(testDay1, testDay2, testDay3, testDay4, testDay5, testDay6, testDay7),
    Week(testDay1, testDay2, testDay3, testDay4, testDay5, testDay6, testDay7),
    Week(testDay1, testDay2, testDay3, testDay4, testDay5, testDay6, testDay7),
    Week(testDay1, testDay2, testDay3, testDay4, testDay5, testDay6, testDay7),
    Week(testDay1, testDay2, testDay3, testDay4, testDay5, testDay6, testDay7),
    Week(testDay1, testDay2, testDay3, testDay4, testDay5, testDay6, testDay7),
    Week(testDay1, testDay2, testDay3, testDay4, testDay5, testDay6, testDay7),
    Week(testDay1, testDay2, testDay3, testDay4, testDay5, testDay6, testDay7),
  ];

  return plan[0].day2.intensity;
}
