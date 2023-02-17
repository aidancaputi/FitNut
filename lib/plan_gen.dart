//first push to plan gen translate branch

//class to represent a workout for the running activity
import 'dart:convert';

class RunWorkout {
  String type; //normal run or workout
  String version; //time or distance
  double volume; //minutes, miles, meters, or seconds
  String intensity; //easy, hard, tempo, etc. ('none' if not applicable)
  double reps; //how many reps of the workout (0 if not applicable)
  RunWorkout(this.type, this.version, this.volume, this.intensity, this.reps);

  Map toJson() => {
        'type': type,
        'version': version,
        'volume': volume,
        'intensity': intensity,
        'reps': reps
      };
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

  Map toJson() => {
        'day1': jsonEncode(day1),
        'day2': jsonEncode(day2),
        'day3': jsonEncode(day3),
        'day4': jsonEncode(day4),
        'day5': jsonEncode(day5),
        'day6': jsonEncode(day6),
        'day7': jsonEncode(day7)
      };
}

//class to represent a user input for a running plan
class RunPlanInput {
  //establish all fields of the input that will be gotten from user
  late String gender;
  late int heightIn;
  late int weightLbs;
  late int age;
  late int experienceLevel;
  late int rhr;
  RunPlanInput(this.gender, this.heightIn, this.weightLbs, this.age,
      this.experienceLevel, this.rhr);
}

//function to get user input and place the input into a RunPlanInput object
void getInput(RunPlanInput inputObject) {
  inputObject.gender = "male";
  inputObject.heightIn = 6 * 12; //6 foot tall
  inputObject.weightLbs = 180; //180 lbs
  inputObject.age = 35;
  inputObject.experienceLevel = 5;
  inputObject.rhr = 80;
}

//this is a dummy function for printing and testing
List<Week> testFunc() {
  var testDay1 = RunWorkout("workout", "distance", 3.0, "easy", 0);
  var testDay2 = RunWorkout("workout", "distance", 3.0, "tempo", 0);
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

  RunPlanInput userInput = RunPlanInput("gender", 0, 0, 0, 0, 0);
  getInput(userInput);

  return plan;
  //return plan[0].day2.intensity;
}
