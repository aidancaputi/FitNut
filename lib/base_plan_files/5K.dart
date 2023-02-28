import 'package:FitNut/plan_gen.dart';

var raceDistance = 3.1;

var day1 = RunWorkout("rest", "rest", 0.0, "rest", 0.0);
var day2 = RunWorkout("run", "distance", 3.0, "easy", 0.0);
var day3 = RunWorkout("workout", "distance", 400, "hard", 5.0);
var day4 = RunWorkout("run", "distance", 3.0, "easy", 0.0);
var day5 = RunWorkout("rest", "rest", 0.0, "rest", 0.0);
var day6 = RunWorkout("run", "distance", 3.0, "easy", 0.0);
var day7 = RunWorkout("run", "distance", 5.0, "easy", 0.0);

var day8 = RunWorkout("rest", "rest", 0.0, "rest", 0.0);
var day9 = RunWorkout("run", "distance", 3.0, "easy", 0.0);
var day10 = RunWorkout("run", "time", 30.0, "tempo", 0.0);
var day11 = RunWorkout("run", "distance", 3.0, "easy", 0.0);
var day12 = RunWorkout("rest", "rest", 0.0, "rest", 0.0);
var day13 = RunWorkout("run", "distance", 3.0, "tempo", 0.0);
var day14 = RunWorkout("run", "distance", 5.0, "easy", 0.0);

var day15 = RunWorkout("rest", "rest", 0.0, "rest", 0.0);
var day16 = RunWorkout("run", "distance", 3.0, "easy", 0.0);
var day17 = RunWorkout("workout", "distance", 400, "hard", 6.0);
var day18 = RunWorkout("run", "distance", 3.0, "easy", 0.0);
var day19 = RunWorkout("rest", "rest", 0.0, "rest", 0.0);
var day20 = RunWorkout("run", "distance", 4.0, "easy", 0.0);
var day21 = RunWorkout("run", "distance", 6.0, "easy", 0.0);

var day22 = RunWorkout("rest", "rest", 0.0, "rest", 0.0);
var day23 = RunWorkout("run", "distance", 3.0, "easy", 0.0);
var day24 = RunWorkout("run", "time", 35.0, "tempo", 0.0);
var day25 = RunWorkout("run", "distance", 3.0, "easy", 0.0);
var day26 = RunWorkout("rest", "rest", 0.0, "rest", 0.0);
var day27 = RunWorkout("rest", "rest", 0.0, "rest", 0.0);
var day28 = RunWorkout("run", "distance", raceDistance, "race", 0.0);

var day29 = RunWorkout("rest", "rest", 0.0, "rest", 0.0);
var day30 = RunWorkout("run", "distance", 3.0, "easy", 0.0);
var day31 = RunWorkout("workout", "distance", 400, "hard", 7.0);
var day32 = RunWorkout("run", "distance", 3.0, "easy", 0.0);
var day33 = RunWorkout("rest", "rest", 0.0, "rest", 0.0);
var day34 = RunWorkout("run", "distance", 4.0, "tempo", 0.0);
var day35 = RunWorkout("run", "distance", 6.0, "easy", 0.0);

var day36 = RunWorkout("rest", "rest", 0.0, "rest", 0.0);
var day37 = RunWorkout("run", "distance", 3.0, "easy", 0.0);
var day38 = RunWorkout("run", "time", 40.0, "tempo", 0.0);
var day39 = RunWorkout("run", "distance", 3.0, "easy", 0.0);
var day40 = RunWorkout("rest", "rest", 0.0, "rest", 0.0);
var day41 = RunWorkout("run", "distance", 5.0, "easy", 0.0);
var day42 = RunWorkout("run", "distance", 7.0, "easy", 0.0);

var day43 = RunWorkout("rest", "rest", 0.0, "rest", 0.0);
var day44 = RunWorkout("run", "distance", 3.0, "easy", 0.0);
var day45 = RunWorkout("workout", "distance", 400, "hard", 8.0);
var day46 = RunWorkout("run", "distance", 3.0, "easy", 0.0);
var day47 = RunWorkout("rest", "rest", 0.0, "rest", 0.0);
var day48 = RunWorkout("run", "distance", 5.0, "tempo", 0.0);
var day49 = RunWorkout("run", "distance", 7.0, "easy", 0.0);

var day50 = RunWorkout("rest", "rest", 0.0, "rest", 0.0);
var day51 = RunWorkout("run", "distance", 3.0, "easy", 0.0);
var day52 = RunWorkout("run", "time", 30.0, "tempo", 0.0);
var day53 = RunWorkout("run", "distance", 3.0, "easy", 0.0);
var day54 = RunWorkout("rest", "rest", 0.0, "rest", 0.0);
var day55 = RunWorkout("rest", "rest", 0.0, "rest", 0.0);
var day56 = RunWorkout("race", "race", raceDistance, "race", 0.0);

List<Week> base5kPlan = [
  Week(day1, day2, day3, day4, day5, day6, day7),
  Week(day8, day9, day10, day11, day12, day13, day14),
  Week(day15, day16, day17, day18, day19, day20, day21),
  Week(day22, day23, day24, day25, day26, day27, day28),
  Week(day29, day30, day31, day32, day33, day34, day35),
  Week(day36, day37, day38, day39, day40, day41, day42),
  Week(day43, day44, day45, day46, day47, day48, day49),
  Week(day50, day51, day52, day53, day54, day55, day56),
];
