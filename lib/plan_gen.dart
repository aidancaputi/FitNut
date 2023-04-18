//first push to plan gen translate branch

//class to represent a workout for the running activity
import 'dart:convert';
import 'dart:ffi';
import 'dart:math';
import 'package:FitNut/user_input.dart';
import 'package:flutter/material.dart';

import 'base_plan_files/5K.dart';
import 'base_plan_files/marathon.dart';
import 'base_plan_files/half-marathon.dart';

class Plan {
  List<Week> plan;
  double totalChange;
  Plan(this.plan, this.totalChange);
}

class Workout {
  String sport;
  String type; //workout, not workout, rest, cross, race
  String version; //time or distance
  double volume; //minutes, miles, meters, or seconds
  String intensity; //easy, hard, tempo, etc. ('none' if not applicable)
  double reps; //how many reps of the workout (0 if not applicable)
  int importance;

  Workout(this.sport, this.type, this.version, this.volume, this.intensity, this.reps, this.importance);

  //this is just so that I can dump the workouts as json..will be removed
  Map toJson() => {'type': type, 'version': version, 'volume': volume, 'intensity': intensity, 'reps': reps, 'importance': importance};
}

//class to represent a week of a training plan (i.e. 7 workouts)
class Week {
  //establish all the days of the week as Workout objects
  late List<Workout> day1;
  late List<Workout> day2;
  late List<Workout> day3;
  late List<Workout> day4;
  late List<Workout> day5;
  late List<Workout> day6;
  late List<Workout> day7;
  late int importance;
  Week(this.day1, this.day2, this.day3, this.day4, this.day5, this.day6, this.day7, this.importance);

  //this is just so that i can dump the week as json..will be removed
  Map toJson() =>
      {'day1': jsonEncode(day1), 'day2': jsonEncode(day2), 'day3': jsonEncode(day3), 'day4': jsonEncode(day4), 'day5': jsonEncode(day5), 'day6': jsonEncode(day6), 'day7': jsonEncode(day7)};
}

//class to represent a user input for a running plan
class PlanInput {
  //establish all fields of the input that will be gotten from user
  late String gender;
  late int heightIn;
  late int weightLbs;
  late int age;
  late int experienceLevel;
  late int rhr;
  late List<bool> schedule;
  late int weeks;
  PlanInput(this.gender, this.heightIn, this.weightLbs, this.age, this.experienceLevel, this.rhr, this.schedule, this.weeks);
}

//this increases the volume of a plan by a certain percentage
Plan increasePlanVolume(Plan planStruct, double percent) {
  //create new plan to return
  Plan newPlan = planStruct;

  //for every week in the plan
  for (var i = 0; i < newPlan.plan.length; i++) {
    newPlan.plan[i] = increaseWeekVolume(newPlan.plan[i], percent); //increase the week volume
  }

  //return the new plan
  return newPlan;
}

//this decreases the volume of a plan by a certain percentage
Plan decreasePlanVolume(Plan planStruct, double percent) {
  //create new plan to return
  Plan newPlan = planStruct;

  //for every week in the plan
  for (var i = 0; i < newPlan.plan.length; i++) {
    newPlan.plan[i] = decreaseWeekVolume(newPlan.plan[i], percent); //decrease the week volume
  }

  return newPlan;
}

Week increaseWeekVolume(Week weekToChange, double percent) {
  //create the new week to return
  Week newWeek = weekToChange;

  //change each day of the new week
  newWeek.day1 = increaseDayVolume(weekToChange.day1, percent);
  newWeek.day2 = increaseDayVolume(weekToChange.day2, percent);
  newWeek.day3 = increaseDayVolume(weekToChange.day3, percent);
  newWeek.day4 = increaseDayVolume(weekToChange.day4, percent);
  newWeek.day5 = increaseDayVolume(weekToChange.day5, percent);
  newWeek.day6 = increaseDayVolume(weekToChange.day6, percent);
  newWeek.day7 = increaseDayVolume(weekToChange.day7, percent);

  //return the new week
  return newWeek;
}

//takes a week and decreases its volume by a percentage
Week decreaseWeekVolume(Week weekToChange, double percent) {
  //create the new week to return
  Week newWeek = weekToChange;

  //change each day of the new week
  newWeek.day1 = decreaseDayVolume(weekToChange.day1, percent);
  newWeek.day2 = decreaseDayVolume(weekToChange.day2, percent);
  newWeek.day3 = decreaseDayVolume(weekToChange.day3, percent);
  newWeek.day4 = decreaseDayVolume(weekToChange.day4, percent);
  newWeek.day5 = decreaseDayVolume(weekToChange.day5, percent);
  newWeek.day6 = decreaseDayVolume(weekToChange.day6, percent);
  newWeek.day7 = decreaseDayVolume(weekToChange.day7, percent);

  //return the new week
  return newWeek;
}

//takes a run workout and increases its volume by a percentage
List<Workout> increaseDayVolume(List<Workout> dayToChange, double percent) {
  //create the new workout to return
  List<Workout> newDay = dayToChange;

  for (var i = 0; i < dayToChange.length; i++) {
    //if it was a rest or cross day, do nothing
    if ((dayToChange[i].sport == "rest") || (dayToChange[i].sport == "cross")) {
      return newDay;
    } else if (dayToChange[i].type == "workout") {
      //if it was a workout, increase reps
      newDay[i].reps *= (1.0 + (percent / 100.0));
    } else if (dayToChange[i].type == "not workout") {
      // if it was a time run, increase the time or distance
      newDay[i].volume *= (1.0 + (percent / 100.0));
    }
  }

  //return the new workout
  return newDay;
}

//takes a run workout and decreases its volume by a percentage
List<Workout> decreaseDayVolume(List<Workout> dayToChange, double percent) {
  //create the new workout to return
  List<Workout> newDay = dayToChange;

  for (var i = 0; i < dayToChange.length; i++) {
    //if it was a rest or cross day, do nothing
    if ((dayToChange[i].sport == "rest") || (dayToChange[i].sport == "cross")) {
      return newDay;
    } else if (dayToChange[i].type == "workout") {
      //if it was a workout, increase reps
      newDay[i].reps *= (1.0 - (percent / 100.0));
    } else if (dayToChange[i].type == "not workout") {
      // if it was a time run, increase the time or distance
      newDay[i].volume *= (1.0 - (percent / 100.0));
    }
  }

  //return the new workout
  return newDay;
}

//this function takes in a Week structure and counts how many days of workouts are in that week
int getDaysInWeek(Week weekToCount) {
  int daysInWeek = 0;
  if (weekToCount.day1[0].sport != "rest") {
    daysInWeek += 1;
  }
  if (weekToCount.day2[0].sport != "rest") {
    daysInWeek += 1;
  }
  if (weekToCount.day3[0].sport != "rest") {
    daysInWeek += 1;
  }
  if (weekToCount.day4[0].sport != "rest") {
    daysInWeek += 1;
  }
  if (weekToCount.day5[0].sport != "rest") {
    daysInWeek += 1;
  }
  if (weekToCount.day6[0].sport != "rest") {
    daysInWeek += 1;
  }
  if (weekToCount.day7[0].sport != "rest") {
    daysInWeek += 1;
  }
  return daysInWeek;
}

//deletes the day of lowest importance from a single week
Week deleteLowestImportanceDay(Week origWeek) {
  Week newWeek = origWeek;

  List<int> importances = [
    origWeek.day1[0].importance,
    origWeek.day2[0].importance,
    origWeek.day3[0].importance,
    origWeek.day4[0].importance,
    origWeek.day5[0].importance,
    origWeek.day6[0].importance,
    origWeek.day7[0].importance
  ];

  //find the index of the lowest importance day
  int min = origWeek.day1[0].importance;
  int minIdx = 0;
  for (var i = 1; i < 7; i++) {
    if ((importances[i] < min) && (importances[i] > 0)) {
      min = importances[i];
      minIdx = i;
    }
  }

  if (minIdx == 0) {
    newWeek.day1 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
  }
  if (minIdx == 1) {
    newWeek.day2 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
  }
  if (minIdx == 2) {
    newWeek.day3 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
  }
  if (minIdx == 3) {
    newWeek.day4 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
  }
  if (minIdx == 4) {
    newWeek.day5 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
  }
  if (minIdx == 5) {
    newWeek.day6 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
  }
  if (minIdx == 6) {
    newWeek.day7 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
  }

  return newWeek;
}

//deletes the day of lowest importance from each week if the week is over the users desire
Plan deleteADay(Plan origPlan, int desired) {
  Plan newPlan = origPlan;

  //go through all the weeks, and if the week has a higher number of days than desired, delete one
  for (var i = 0; i < origPlan.plan.length; i++) {
    if (getDaysInWeek(origPlan.plan[i]) > desired) {
      //print("deleting a day from a week");
      newPlan.plan[i] = deleteLowestImportanceDay(newPlan.plan[i]);
    }
  }

  return newPlan;
}

Week insertDayAtIndex(Week origWeek, int idx, List<Workout> dayToInsert) {
  Week newWeek = origWeek;

  if (idx == 0) {
    newWeek.day1 = dayToInsert;
  }
  if (idx == 1) {
    newWeek.day2 = dayToInsert;
  }
  if (idx == 2) {
    newWeek.day3 = dayToInsert;
  }
  if (idx == 3) {
    newWeek.day4 = dayToInsert;
  }
  if (idx == 4) {
    newWeek.day5 = dayToInsert;
  }
  if (idx == 5) {
    newWeek.day6 = dayToInsert;
  }
  if (idx == 6) {
    newWeek.day7 = dayToInsert;
  }

  return newWeek;
}

//takes a week and a schedule of the same length and returns a shuffled version that matches
Week arrangeDaysOfWeek(Week origWeek, List<bool> schedule) {
  //create a new week with all rest days
  Workout day1 = Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0);
  Workout day2 = Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0);
  Workout day3 = Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0);
  Workout day4 = Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0);
  Workout day5 = Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0);
  Workout day6 = Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0);
  Workout day7 = Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0);
  Week newWeek = Week([day1], [day2], [day3], [day4], [day5], [day6], [day7], origWeek.importance);

  //mark the days of the week we want
  List<int> indexes = [];
  for (var j = 0; j < schedule.length; j++) {
    if (schedule[j] == true) {
      indexes.add(j);
    }
  }

  //put all non-rest days into a list
  List<List<Workout>> temp = [];
  if (origWeek.day1[0].type != "rest") {
    temp.add(origWeek.day1);
  }
  if (origWeek.day2[0].type != "rest") {
    temp.add(origWeek.day2);
  }
  if (origWeek.day3[0].type != "rest") {
    temp.add(origWeek.day3);
  }
  if (origWeek.day4[0].type != "rest") {
    temp.add(origWeek.day4);
  }
  if (origWeek.day5[0].type != "rest") {
    temp.add(origWeek.day5);
  }
  if (origWeek.day6[0].type != "rest") {
    temp.add(origWeek.day6);
  }
  if (origWeek.day7[0].type != "rest") {
    temp.add(origWeek.day7);
  }

  late List<Workout> dayToInsert;

  if (indexes.length <= temp.length) {
    //if the user wants less days, delete the difference from temp
    for (var i = indexes.length; i < temp.length; i++) {
      temp = deleteLowestImportanceDayTemp(temp);
    }

    //go through the list of user indexes and put the highest importance
    for (var i = 0; i < indexes.length; i++) {
      dayToInsert = temp[i];
      //dayToInsert = getHighestImportanceDay(temp);
      newWeek = insertDayAtIndex(newWeek, indexes[i], dayToInsert);
    }
  } else {
    //if the user wants more days, just add the temp into spots
    for (var i = 0; i < temp.length; i++) {
      dayToInsert = temp[i];
      //dayToInsert = getHighestImportanceDay(temp);
      newWeek = insertDayAtIndex(newWeek, indexes[i], dayToInsert);
    }
  }

  return newWeek;
}

List<List<Workout>> deleteLowestImportanceDayTemp(List<List<Workout>> list) {
  List<Workout> lowest = list[0];
  for (var i = 1; i < list.length; i++) {
    if (list[i][0].importance < lowest[0].importance) {
      lowest = list[i];
    }
  }
  list.remove(lowest);
  return list;
}

//shuffle the days to fit the user schedule (this is assuming that the # of days has been appropriately changed)
Plan arrangeDaysOfPlan(Plan origPlan, PlanInput userIn) {
  Plan newPlan = origPlan;

  //loop through each week in the plan and shuffle the days appropriately
  for (var i = 0; i < origPlan.plan.length; i++) {
    newPlan.plan[i] = arrangeDaysOfWeek(origPlan.plan[i], userIn.schedule);
  }

  return newPlan;
}

//this function customizes the days of the week based on the user input
Plan customizeSchedule(Plan origPlan, PlanInput userIn) {
  Plan newPlan = origPlan;

  //count the users number of days per week available
  var userDaysPerWeek = 0;
  for (var j = 0; j < userIn.schedule.length; j++) {
    if (userIn.schedule[j] == true) {
      userDaysPerWeek += 1;
    }
  }

  //get the number of days in the busiest week of the plan
  var maxPlanDaysPerWeek = 0;
  var temp = 0;
  for (var i = 0; i < origPlan.plan.length; i++) {
    temp = getDaysInWeek(origPlan.plan[i]);
    if (temp > maxPlanDaysPerWeek) {
      maxPlanDaysPerWeek = temp;
    }
  }

  //for every day they are lower than the base plan, delete the lowest importance day from the plan
  int idx = userDaysPerWeek;
  while (idx < maxPlanDaysPerWeek) {
    //print("here1");
    newPlan = deleteADay(newPlan, userDaysPerWeek);
    idx += 1;
  }

  //now, shuffle around the days into their schedule now that we have the correct number of days
  newPlan = arrangeDaysOfPlan(newPlan, userIn);

  return newPlan;
}

//this function takes a plan in and removes the lowest priority week
List<Week> deleteLowestImportanceWeek(List<Week> origPlan) {
  List<Week> newPlan = origPlan;

  //go through list and find the week with the least importance
  int curMinImportance = origPlan[0].importance;
  int curMinIdx = 0;
  for (var i = 1; i < origPlan.length; i++) {
    if (origPlan[i].importance < curMinImportance) {
      curMinIdx = i;
      curMinImportance = origPlan[i].importance;
    }
  }

  //delete the week found with the lowest importance
  //print("removing week $curMinIdx");
  newPlan.removeAt(curMinIdx);

  return newPlan;
}

//this takes a plan and a week and adds the week to the front of the plan
List<Week> addWeekToFrontOfPlan(List<Week> origPlan, Week weekToAdd) {
  List<Week> newPlan = origPlan;

  //insert the week
  newPlan.insert(0, weekToAdd);

  return newPlan;
}

//this function takes a plan and adjusts its length in weeks to match the user input
Plan customizeLength(Plan origPlan, PlanInput userIn) {
  Plan newPlan = origPlan;

  //get length of original plan in weeks
  int origLength = origPlan.plan.length;
  int inputLen = userIn.weeks;

  //if the user wants a shorter plan
  if (userIn.weeks < origLength) {
    //for every week below the original plan, add 8% volume and remove lowest priority
    while (inputLen < origLength) {
      //print("here2");
      newPlan.plan = deleteLowestImportanceWeek(newPlan.plan);
      // newPlan = increasePlanVolume(newPlan, 8);
      inputLen += 1;
    }
  }

  //WHY IS THIS MAKING THE ADDED WEEKS ALL THE SAME
  //if the user wants a longer plan
  if (userIn.weeks > origLength) {
    //for every week above the original length, add a week to the front of the plan that is 3% less volume than the first
    while (inputLen > origLength) {
      Week temp = copyWeek(newPlan.plan[0]);
      temp = decreaseWeekVolume(temp, 3.0); //decrease the first week by 3% volume and save in temp

      newPlan.plan = addWeekToFrontOfPlan(newPlan.plan, temp); //add this new week to the front of the plan
      inputLen -= 1;
    }
  }

  return newPlan;
}

Week copyWeek(Week origWeek) {
  late List<Workout> day1copy;
  late List<Workout> day2copy;
  late List<Workout> day3copy;
  late List<Workout> day4copy;
  late List<Workout> day5copy;
  late List<Workout> day6copy;
  late List<Workout> day7copy;

  if (origWeek.day1.length == 1) {
    day1copy = [
      Workout(origWeek.day1[0].sport, origWeek.day1[0].type, origWeek.day1[0].version, origWeek.day1[0].volume, origWeek.day1[0].intensity, origWeek.day1[0].reps, origWeek.day1[0].importance)
    ];
  } else {
    day1copy = [
      Workout(origWeek.day1[0].sport, origWeek.day1[0].type, origWeek.day1[0].version, origWeek.day1[0].volume, origWeek.day1[0].intensity, origWeek.day1[0].reps, origWeek.day1[0].importance),
      Workout(origWeek.day1[1].sport, origWeek.day1[1].type, origWeek.day1[1].version, origWeek.day1[1].volume, origWeek.day1[1].intensity, origWeek.day1[1].reps, origWeek.day1[1].importance)
    ];
  }

  if (origWeek.day2.length == 1) {
    day2copy = [
      Workout(origWeek.day2[0].sport, origWeek.day2[0].type, origWeek.day2[0].version, origWeek.day2[0].volume, origWeek.day2[0].intensity, origWeek.day2[0].reps, origWeek.day2[0].importance)
    ];
  } else {
    day2copy = [
      Workout(origWeek.day2[0].sport, origWeek.day2[0].type, origWeek.day2[0].version, origWeek.day2[0].volume, origWeek.day2[0].intensity, origWeek.day2[0].reps, origWeek.day2[0].importance),
      Workout(origWeek.day2[1].sport, origWeek.day2[1].type, origWeek.day2[1].version, origWeek.day2[1].volume, origWeek.day2[1].intensity, origWeek.day2[1].reps, origWeek.day2[1].importance)
    ];
  }

  if (origWeek.day3.length == 1) {
    day3copy = [
      Workout(origWeek.day3[0].sport, origWeek.day3[0].type, origWeek.day3[0].version, origWeek.day3[0].volume, origWeek.day3[0].intensity, origWeek.day3[0].reps, origWeek.day3[0].importance)
    ];
  } else {
    day3copy = [
      Workout(origWeek.day3[0].sport, origWeek.day3[0].type, origWeek.day3[0].version, origWeek.day3[0].volume, origWeek.day3[0].intensity, origWeek.day3[0].reps, origWeek.day3[0].importance),
      Workout(origWeek.day3[1].sport, origWeek.day3[1].type, origWeek.day3[1].version, origWeek.day3[1].volume, origWeek.day3[1].intensity, origWeek.day3[1].reps, origWeek.day3[1].importance)
    ];
  }

  if (origWeek.day4.length == 1) {
    day4copy = [
      Workout(origWeek.day4[0].sport, origWeek.day4[0].type, origWeek.day4[0].version, origWeek.day4[0].volume, origWeek.day4[0].intensity, origWeek.day4[0].reps, origWeek.day4[0].importance)
    ];
  } else {
    day4copy = [
      Workout(origWeek.day4[0].sport, origWeek.day4[0].type, origWeek.day4[0].version, origWeek.day4[0].volume, origWeek.day4[0].intensity, origWeek.day4[0].reps, origWeek.day4[0].importance),
      Workout(origWeek.day4[1].sport, origWeek.day4[1].type, origWeek.day4[1].version, origWeek.day4[1].volume, origWeek.day4[1].intensity, origWeek.day4[1].reps, origWeek.day4[1].importance)
    ];
  }

  if (origWeek.day5.length == 1) {
    day5copy = [
      Workout(origWeek.day5[0].sport, origWeek.day5[0].type, origWeek.day5[0].version, origWeek.day5[0].volume, origWeek.day5[0].intensity, origWeek.day5[0].reps, origWeek.day5[0].importance)
    ];
  } else {
    day5copy = [
      Workout(origWeek.day5[0].sport, origWeek.day5[0].type, origWeek.day5[0].version, origWeek.day5[0].volume, origWeek.day5[0].intensity, origWeek.day5[0].reps, origWeek.day5[0].importance),
      Workout(origWeek.day5[1].sport, origWeek.day5[1].type, origWeek.day5[1].version, origWeek.day5[1].volume, origWeek.day5[1].intensity, origWeek.day5[1].reps, origWeek.day5[1].importance)
    ];
  }

  if (origWeek.day6.length == 1) {
    day6copy = [
      Workout(origWeek.day6[0].sport, origWeek.day6[0].type, origWeek.day6[0].version, origWeek.day6[0].volume, origWeek.day6[0].intensity, origWeek.day6[0].reps, origWeek.day6[0].importance)
    ];
  } else {
    day6copy = [
      Workout(origWeek.day6[0].sport, origWeek.day6[0].type, origWeek.day6[0].version, origWeek.day6[0].volume, origWeek.day6[0].intensity, origWeek.day6[0].reps, origWeek.day6[0].importance),
      Workout(origWeek.day6[1].sport, origWeek.day6[1].type, origWeek.day6[1].version, origWeek.day6[1].volume, origWeek.day6[1].intensity, origWeek.day6[1].reps, origWeek.day6[1].importance)
    ];
  }

  if (origWeek.day7.length == 1) {
    day7copy = [
      Workout(origWeek.day7[0].sport, origWeek.day7[0].type, origWeek.day7[0].version, origWeek.day7[0].volume, origWeek.day7[0].intensity, origWeek.day7[0].reps, origWeek.day7[0].importance)
    ];
  } else {
    day7copy = [
      Workout(origWeek.day7[0].sport, origWeek.day7[0].type, origWeek.day7[0].version, origWeek.day7[0].volume, origWeek.day7[0].intensity, origWeek.day7[0].reps, origWeek.day7[0].importance),
      Workout(origWeek.day7[1].sport, origWeek.day7[1].type, origWeek.day7[1].version, origWeek.day7[1].volume, origWeek.day7[1].intensity, origWeek.day7[1].reps, origWeek.day7[1].importance)
    ];
  }

  Week newWeek = Week(day1copy, day2copy, day3copy, day4copy, day5copy, day6copy, day7copy, origWeek.importance);
  return newWeek;
}

//take in user input and return how many days per week they are available
int getDaysAvailable(PlanInput userIn) {
  int days = 0;
  for (var x = 0; x < userIn.schedule.length; x++) {
    if (userIn.schedule[x] == true) {
      days++;
    }
  }
  return days;
}

//find the longest week in the plan
int getLongestPlanWeek(Plan planStruct) {
  int curMax = 0;
  int temp = 0;
  for (var x = 0; x < planStruct.plan.length; x++) {
    temp = getDaysInWeek(planStruct.plan[x]);
    if (temp > curMax) {
      curMax = temp;
    }
  }
  return curMax;
}

Plan customizePlan(Plan origPlan, PlanInput userIn) {
  Plan newPlan = origPlan;

  //if they werent available every day, customize the weekly schedule
  if (getDaysAvailable(userIn) != 7) {
    //using the schedule, customize the days per week
    newPlan = customizeSchedule(origPlan, userIn);
  }

  //using the length, customize the length of the plan in weeks
  newPlan = customizeLength(newPlan, userIn);

  //decrase volume by 10 percent if female
  if (userIn.gender == "female") {
    //newPlan = decreasePlanVolume(newPlan, 10.0);
    newPlan.totalChange -= 5;
  }

  //height and weight conversions
  double weight_kg = userIn.weightLbs * 0.453592;
  double height_m = userIn.heightIn * 0.0254;
  double bmi = weight_kg / pow(height_m, 2);

  //if their bmi is over 25, decrease volume by 2 percent for every point above
  if (bmi > 25) {
    while (bmi > 25) {
      //print("here4");
      //newPlan = decreasePlanVolume(newPlan, 1);
      newPlan.totalChange -= 1;
      bmi -= 1;
    }
  }

  //adjust volume based on age
  if (userIn.age < 18) {
    //newPlan = decreasePlanVolume(newPlan, 10);
    newPlan.totalChange -= 8;
  } else if ((40 <= userIn.age) && (userIn.age < 50)) {
    //newPlan = decreasePlanVolume(newPlan, 5);
    newPlan.totalChange -= 5;
  } else if ((50 <= userIn.age) && (userIn.age < 60)) {
    //newPlan = decreasePlanVolume(newPlan, 8);
    newPlan.totalChange -= 8;
  } else if ((60 <= userIn.age) && (userIn.age < 70)) {
    //newPlan = decreasePlanVolume(newPlan, 10);
    newPlan.totalChange -= 10;
  } else if (70 <= userIn.age) {
    //newPlan = decreasePlanVolume(newPlan, 15);
    newPlan.totalChange -= 12;
  }

  //if experience level is above 5, increase by 5% for every point above
  //if it is below 5, decrease by 5% for every point below
  int tempExp = userIn.experienceLevel;
  if (userIn.experienceLevel > 5) {
    while (tempExp > 5) {
      //print("here5");
      //newPlan = increasePlanVolume(newPlan, 3);
      newPlan.totalChange += 3;
      tempExp -= 1;
    }
  } else if (userIn.experienceLevel < 5) {
    while (tempExp < 5) {
      //print("here6");
      //newPlan = decreasePlanVolume(newPlan, 7);
      newPlan.totalChange -= 5;
      tempExp += 1;
    }
  }

  //for every rhr point above 100, decrease by 1% volume
  //for every rhr point below 60, increase by 1% volume
  int tempRHR = userIn.rhr;
  if (userIn.rhr != 0) {
    if (userIn.rhr > 100) {
      while (tempRHR > 100) {
        //print("here7");
        //newPlan = decreasePlanVolume(newPlan, 1);
        newPlan.totalChange -= 1;
        tempRHR -= 1;
      }
    } else if (userIn.rhr < 100) {
      while (tempRHR > 100) {
        //print("here8");
        //newPlan = decreasePlanVolume(newPlan, 1);
        newPlan.totalChange -= 1;
        tempRHR -= 1;
      }
    }
  }

  //return the changed plan
  return newPlan;
}

//round a double to a certain amount of places
double roundDouble(double value, int places) {
  return double.parse((value).toStringAsFixed(places));
}

//takes a workout and rounds its values appropriately
Workout roundWorkout(Workout origWorkout) {
  Workout newWorkout = origWorkout;

  //distance run = round volume to nearest tenth
  if ((origWorkout.type == "not workout") && (origWorkout.version == "distance")) {
    newWorkout = Workout(origWorkout.sport, origWorkout.type, origWorkout.version, roundDouble(origWorkout.volume, 1), origWorkout.intensity, origWorkout.reps, origWorkout.importance);
  }
  //any other thing = round volume to whole number and reps to whole number
  else {
    newWorkout = Workout(origWorkout.sport, origWorkout.type, origWorkout.version, origWorkout.volume.roundToDouble(), origWorkout.intensity, origWorkout.reps.roundToDouble(), origWorkout.importance);
  }
  return newWorkout;
}

List<Workout> roundDay(List<Workout> origDay) {
  List<Workout> newDay = origDay;
  for (var i = 0; i < origDay.length; i++) {
    newDay[i] = roundWorkout(origDay[i]);
  }
  return newDay;
}

//takes a week and rounds all the days
Week roundWeek(Week origWeek) {
  Week newWeek = origWeek;
  newWeek.day1 = roundDay(origWeek.day1);
  newWeek.day2 = roundDay(origWeek.day2);
  newWeek.day3 = roundDay(origWeek.day3);
  newWeek.day4 = roundDay(origWeek.day4);
  newWeek.day5 = roundDay(origWeek.day5);
  newWeek.day6 = roundDay(origWeek.day6);
  newWeek.day7 = roundDay(origWeek.day7);
  return newWeek;
}

//rounds a whole list of weeks (plan)
Plan roundPlan(Plan origPlan) {
  Plan newPlan = origPlan;
  for (var i = 0; i < origPlan.plan.length; i++) {
    newPlan.plan[i] = roundWeek(origPlan.plan[i]);
  }
  return newPlan;
}

//caller function for generating plan
List<Week> generatePlan(String activity, String gender, int heightIN, int weightLBS, int age, int experience, int rhr, List<bool> schedule, int weeks) {
  //gather user input
  PlanInput userInput = PlanInput(gender, heightIN, weightLBS, age, experience, rhr, schedule, weeks);

  //this will be set to the chosen activity base plan
  List<Week> initialPlanList = [];

  //choose base activity based on activity chosen
  if (activity == "5K") {
    initialPlanList = base5kPlan;
  } else if (activity == "Marathon") {
    initialPlanList = baseMarathonPlan;
  } else if (activity == "Half Marathon") {
    initialPlanList = baseHalfMarathonPlan;
  }

  //put plan into class
  Plan initialPlanStruct = Plan(initialPlanList, 0.0);

  //pass in the initial plan and the user input to customize final plan
  //print("cusotmizing");
  Plan finalPlan = customizePlan(initialPlanStruct, userInput);

  print("total change:");
  print(finalPlan.totalChange);

  //apply percentage change
  if (finalPlan.totalChange > 0) {
    finalPlan = increasePlanVolume(finalPlan, finalPlan.totalChange);
  } else if (finalPlan.totalChange < 0) {
    finalPlan.totalChange *= -1;
    //print("calling decrease volume");
    finalPlan = decreasePlanVolume(finalPlan, finalPlan.totalChange);
  }

  finalPlan = roundPlan(finalPlan);

  for (var i = 0; i < finalPlan.plan.length; i++) {
    print(jsonEncode(finalPlan.plan[i].day7));
  }

  return finalPlan.plan;
}
