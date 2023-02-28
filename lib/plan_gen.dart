//first push to plan gen translate branch

//class to represent a workout for the running activity
import 'dart:convert';
import 'dart:math';
import 'base_plan_files/5K.dart';

class RunWorkout {
  String type; //run, workout, rest
  String version; //time or distance
  double volume; //minutes, miles, meters, or seconds
  String intensity; //easy, hard, tempo, etc. ('none' if not applicable)
  double reps; //how many reps of the workout (0 if not applicable)
  RunWorkout(this.type, this.version, this.volume, this.intensity, this.reps);

  //this is just so that I can dump the workouts as json..will be removed
  Map toJson() => {'type': type, 'version': version, 'volume': volume, 'intensity': intensity, 'reps': reps};
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
  Week(this.day1, this.day2, this.day3, this.day4, this.day5, this.day6, this.day7);

  //this is just so that i can dump the week as json..will be removed
  Map toJson() =>
      {'day1': jsonEncode(day1), 'day2': jsonEncode(day2), 'day3': jsonEncode(day3), 'day4': jsonEncode(day4), 'day5': jsonEncode(day5), 'day6': jsonEncode(day6), 'day7': jsonEncode(day7)};
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
  RunPlanInput(this.gender, this.heightIn, this.weightLbs, this.age, this.experienceLevel, this.rhr);
}

//this increases the volume of a plan by a certain percentage
List<Week> increasePlanVolume(List<Week> plan, double percent) {
  //create new plan to return
  List<Week> newPlan = plan;

  //for every week in the plan
  for (var i = 0; i < plan.length; i++) {
    newPlan[i] = increaseWeekVolume(plan[i], percent); //increase the week volume
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
    newPlan[i] = decreaseWeekVolume(plan[i], percent); //decrease the week volume
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
    //if it was a workout, decrease reps
    newWorkout.reps *= (1.0 - (percent / 100.0));
    //newWorkout.reps = newWorkout.reps.roundToDouble();
  } else if (dayToChange.type == "run") {
    // if it was a time run, decrease the time or distance
    newWorkout.volume *= (1.0 - (percent / 100.0));
    //newWorkout.volume = newWorkout.volume.roundToDouble();
  }

  //return the new workout
  return newWorkout;
}

List<Week> customizePlan(List<Week> origPlan, RunPlanInput userIn) {
  List<Week> newPlan = origPlan;

  //decrase volume by 10 percent if female
  if (userIn.gender == "female") {
    newPlan = decreasePlanVolume(newPlan, 10.0);
  }

  //height and weight conversions
  double weight_kg = userIn.weightLbs * 0.453592;
  double height_m = userIn.heightIn * 0.0254;
  double bmi = weight_kg / pow(height_m, 2);

  //if their bmi is over 25, decrease volume by 2 percent for every point above
  if (bmi > 25) {
    while (bmi > 25) {
      newPlan = decreasePlanVolume(newPlan, 2);
      bmi -= 1;
    }
  }

  //adjust volume based on age
  if (userIn.age < 18) {
    newPlan = decreasePlanVolume(newPlan, 10);
  } else if ((40 <= userIn.age) && (userIn.age < 50)) {
    newPlan = decreasePlanVolume(newPlan, 5);
  } else if ((50 <= userIn.age) && (userIn.age < 60)) {
    newPlan = decreasePlanVolume(newPlan, 8);
  } else if ((60 <= userIn.age) && (userIn.age < 70)) {
    newPlan = decreasePlanVolume(newPlan, 10);
  } else if (70 <= userIn.age) {
    newPlan = decreasePlanVolume(newPlan, 15);
  }

  //if experience level is above 5, increase by 5% for every point above
  //if it is below 5, decrease by 5% for every point below
  int tempExp = userIn.experienceLevel;
  if (userIn.experienceLevel > 5) {
    while (tempExp > 5) {
      newPlan = increasePlanVolume(newPlan, 5);
      tempExp -= 1;
    }
  } else if (userIn.experienceLevel < 5) {
    while (tempExp < 5) {
      newPlan = decreasePlanVolume(newPlan, 5);
      tempExp += 1;
    }
  }

  //for every rhr point above 100, decrease by 1% volume
  //for every rhr point below 60, increase by 1% volume
  int tempRHR = userIn.rhr;
  if (userIn.rhr != 0) {
    if (userIn.rhr > 100) {
      while (tempRHR > 100) {
        newPlan = decreasePlanVolume(newPlan, 1);
        tempRHR -= 1;
      }
    } else if (userIn.rhr < 100) {
      while (tempRHR > 100) {
        newPlan = decreasePlanVolume(newPlan, 1);
        tempRHR -= 1;
      }
    }
  }

  //return the changed plan
  return newPlan;
}

//caller function for generating plan
List<Week> generatePlan(String activity, String gender, int heightIN, int weightLBS, int age, int experience, int rhr) {
  //gather user input
  RunPlanInput userInput = RunPlanInput(gender, heightIN, weightLBS, age, experience, rhr);

  //this will be set to the chosen activity base plan
  List<Week> initialPlan = [];

  //choose base activity based on activity chosen
  if (activity == "5K") {
    initialPlan = base5kPlan;
  }

  //pass in the initial plan and the user input to customize final plan
  List<Week> finalPlan = customizePlan(initialPlan, userInput);

  return finalPlan;
}
