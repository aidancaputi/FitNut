//first push to plan gen translate branch

//class to represent a workout for the running activity
class RunWorkout {
  late String type; //normal run or workout
  late String version; //time or distance
  late double volume; //minutes, miles, meters, or seconds
  late String intensity; //easy, hard, tempo, etc. ('none' if not applicable)
  late double reps; //how many reps of the workout (0 if not applicable)
  RunWorkout(this.type, this.version, this.volume, this.intensity, this.reps);
}

String testFunc() {
  var x = "Hello there";
  var test = new RunWorkout("run", "distance", 3.0, "easy", 0);
  return test.type;
}
