//first push to plan gen translate branch

//class to represent a workout for the running activity
import 'dart:convert';

class RunWorkout {
  String type; //run, workout, rest
  String version; //time or distance
  double volume; //minutes, miles, meters, or seconds
  String intensity; //easy, hard, tempo, etc. ('none' if not applicable)
  double reps; //how many reps of the workout (0 if not applicable)
  RunWorkout(this.type, this.version, this.volume, this.intensity, this.reps);

  //this is just so that I can dump the workouts as json..will be removed
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

  //this is just so that i can dump the week as json..will be removed
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

//this increases the volume of a plan by a certain percentage
List<Week> increasePlanVolume(List<Week> plan, double percent) {
  //create new plan to return
  List<Week> newPlan = plan;

  //for every week in the plan
  for (var i = 0; i < plan.length; i++) {
    newPlan[i] =
        increaseWeekVolume(plan[i], percent); //increase the week volume
  }

  //return the new plan
  return newPlan;
}

//this decreases the volume of a plan by a certain percentage
List<Week> decreasePlanVolume(List<Week> plan, double percent) {
  //create new plan to return
  List<Week> newPlan = plan;

  //for every week in the plan
  for (var i = 0; i < plan.length; i++) {
    newPlan[i] =
        decreaseWeekVolume(plan[i], percent); //increase the week volume
  }

  //return the new plan
  return newPlan;
}

Week increaseWeekVolume(Week weekToChange, double percent) {
  //create the new week to return
  Week newWeek = weekToChange;

  //change each day of the new week
  weekToChange.day1 = increaseDayVolume(weekToChange.day1, percent);
  weekToChange.day2 = increaseDayVolume(weekToChange.day2, percent);
  weekToChange.day3 = increaseDayVolume(weekToChange.day3, percent);
  weekToChange.day4 = increaseDayVolume(weekToChange.day4, percent);
  weekToChange.day5 = increaseDayVolume(weekToChange.day5, percent);
  weekToChange.day6 = increaseDayVolume(weekToChange.day6, percent);
  weekToChange.day7 = increaseDayVolume(weekToChange.day7, percent);

  //return the new week
  return newWeek;
}

//takes a week and decreases its volume by a percentage
Week decreaseWeekVolume(Week weekToChange, double percent) {
  //create the new week to return
  Week newWeek = weekToChange;

  //change each day of the new week
  weekToChange.day1 = decreaseDayVolume(weekToChange.day1, percent);
  weekToChange.day2 = decreaseDayVolume(weekToChange.day2, percent);
  weekToChange.day3 = decreaseDayVolume(weekToChange.day3, percent);
  weekToChange.day4 = decreaseDayVolume(weekToChange.day4, percent);
  weekToChange.day5 = decreaseDayVolume(weekToChange.day5, percent);
  weekToChange.day6 = decreaseDayVolume(weekToChange.day6, percent);
  weekToChange.day7 = decreaseDayVolume(weekToChange.day7, percent);

  //return the new week
  return newWeek;
}

//takes a run workout and increases its volume by a percentage
RunWorkout increaseDayVolume(RunWorkout dayToChange, double percent) {
  //create the new workout to return
  RunWorkout newWorkout = dayToChange;

  //if it was a rest day, do nothing
  if (dayToChange.type == "rest") {
    return newWorkout;
  } else if (dayToChange.type == "workout") {
    //if it was a workout, increase reps
    newWorkout.reps *= (1.0 + (percent / 100.0));
    //newWorkout.reps = newWorkout.reps.roundToDouble();
  } else if (dayToChange.type == "run") {
    // if it was a time run, increase the time or distance
    newWorkout.volume *= (1.0 + (percent / 100.0));
    //newWorkout.volume = newWorkout.volume.roundToDouble();
  }

  //return the new workout
  return newWorkout;
}

//takes a run workout and decreases its volume by a percentage
RunWorkout decreaseDayVolume(RunWorkout dayToChange, double percent) {
  //create the new workout to return
  RunWorkout newWorkout = dayToChange;

  //if it was a rest day, do nothing
  if (dayToChange.type == "rest") {
    return newWorkout;
  } else if (dayToChange.type == "workout") {
    //if it was a workout, increase reps
    newWorkout.reps *= (1.0 - (percent / 100.0));
    //newWorkout.reps = newWorkout.reps.roundToDouble();
  } else if (dayToChange.type == "run") {
    // if it was a time run, increase the time or distance
    newWorkout.volume *= (1.0 - (percent / 100.0));
    //newWorkout.volume = newWorkout.volume.roundToDouble();
  }

  //return the new workout
  return newWorkout;
}

//this is a dummy function for printing and testing
List<Week> testFunc() {
  var testDay1 = RunWorkout("rest", "rest", 0.0, "rest", 0.0);
  var testDay2 = RunWorkout("workout", "distance", 400, "hard", 6.0);
  var testDay3 = RunWorkout("run", "distance", 3.0, "easy", 0.0);
  var testDay4 = RunWorkout("run", "time", 30.0, "tempo", 0.0);
  var testDay5 = RunWorkout("rest", "rest", 0.0, "rest", 0.0);
  var testDay6 = RunWorkout("workout", "time", 90.0, "easy", 5.0);
  var testDay7 = RunWorkout("run", "distance", 6.0, "easy", 0.0);

  var testDay11 = RunWorkout("rest", "rest", 0.0, "rest", 0.0);
  var testDay22 = RunWorkout("workout", "distance", 400, "hard", 6.0);
  var testDay33 = RunWorkout("run", "distance", 3.0, "easy", 0.0);
  var testDay44 = RunWorkout("run", "time", 30.0, "tempo", 0.0);
  var testDay55 = RunWorkout("rest", "rest", 0.0, "rest", 0.0);
  var testDay66 = RunWorkout("workout", "time", 90.0, "easy", 5.0);
  var testDay77 = RunWorkout("run", "distance", 6.0, "easy", 0.0);

  var testDay111 = RunWorkout("rest", "rest", 0.0, "rest", 0.0);
  var testDay222 = RunWorkout("workout", "distance", 400, "hard", 6.0);
  var testDay333 = RunWorkout("run", "distance", 3.0, "easy", 0.0);
  var testDay444 = RunWorkout("run", "time", 30.0, "tempo", 0.0);
  var testDay555 = RunWorkout("rest", "rest", 0.0, "rest", 0.0);
  var testDay666 = RunWorkout("workout", "time", 90.0, "easy", 5.0);
  var testDay777 = RunWorkout("run", "distance", 6.0, "easy", 0.0);

  List<Week> initialPlan = [
    Week(testDay1, testDay2, testDay3, testDay4, testDay5, testDay6, testDay7),
    Week(testDay11, testDay22, testDay33, testDay44, testDay55, testDay66,
        testDay77),
    Week(testDay111, testDay222, testDay333, testDay444, testDay555, testDay666,
        testDay777),
  ];

  RunPlanInput userInput = RunPlanInput("gender", 0, 0, 0, 0, 0);
  getInput(userInput);

  List<Week> finalPlan = increasePlanVolume(initialPlan, 10.0);
  finalPlan = decreasePlanVolume(finalPlan, 10.0);
  finalPlan = increasePlanVolume(finalPlan, 20.0);

  return finalPlan;
}
