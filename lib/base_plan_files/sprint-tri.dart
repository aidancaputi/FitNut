import 'package:FitNut/plan_gen.dart';

var raceDistance = 3.1;

//notes:

//swim [workouts are in meters for volume
//bike [workouts are in seconds for volume

//week 1
var day1 = [Workout("run", "not [workout", "time", 16.0, "easy", 0.0, 0)];
var day2 = [Workout("bike", "not [workout", "time", 20.0, "easy", 0.0, 0)];
var day3 = [Workout("swim", "[workout", "distance", 25.0, "hard", 10.0, 0)];
var day4 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day5 = [Workout("run", "not [workout", "time", 24.0, "easy", 0.0, 0)];
var day6 = [Workout("swim", "[workout", "distance", 50.0, "hard", 10.0, 0)];
var day7 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];

//week 2
var day8 = [Workout("run", "not [workout", "time", 20.0, "easy", 0.0, 0)];
var day9 = [Workout("bike", "not [workout", "time", 30.0, "easy", 0.0, 0)];
var day10 = [Workout("swim", "[workout", "distance", 100.0, "hard", 5.0, 0)];
var day11 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day12 = [Workout("run", "not [workout", "distance", 2.0, "easy", 0.0, 0)];
var day13 = [Workout("swim", "not [workout", "time", 10.0, "easy", 0.0, 0)];
var day14 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];

//week 3
var day15 = [Workout("run", "not [workout", "distance", 1.0, "easy", 0.0, 0)];
var day16 = [Workout("bike", "not [workout", "time", 45.0, "easy", 0.0, 0)]; //
var day17 = [Workout("swim", "[workout", "distance", 50.0, "hard", 10.0, 0)]; //10 x 50m
var day18 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //
var day19 = [Workout("run", "not [workout", "distance", 1.5, "easy", 0.0, 0)]; //
var day20 = [Workout("bike", "[workout", "time", 120.0, "hard", 10.0, 0)]; //10 x 120 sec
var day21 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];

//week 4
var day22 = [Workout("run", "not [workout", "distance", 2.0, "easy", 0.0, 0)];
var day23 = [Workout("bike", "not [workout", "time", 50.0, "easy", 0.0, 0)];
var day24 = [Workout("swim", "not [workout", "time", 15.0, "easy", 0.0, 0)]; //
var day25 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day26 = [Workout("run", "[workout", "time", 60.0, "hard", 10.0, 0)]; //10 x 60 sec
var day27 = [Workout("bike", "[workout", "time", 120.0, "hard", 10.0, 0)];
var day28 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];

var day29 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day30 = [Workout("run", "distance", 3.0, "easy", 0.0, 2)];
var day31 = [Workout("workout", "distance", 400, "hard", 7.0, 4)];
var day32 = [Workout("run", "distance", 3.0, "easy", 0.0, 2)];
var day33 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day34 = [Workout("run", "distance", 4.0, "tempo", 0.0, 3)];
var day35 = [Workout("run", "distance", 6.0, "easy", 0.0, 5)];

var day36 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day37 = [Workout("run", "distance", 3.0, "easy", 0.0, 2)];
var day38 = [Workout("run", "time", 40.0, "tempo", 0.0, 4)];
var day39 = [Workout("run", "distance", 3.0, "easy", 0.0, 2)];
var day40 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day41 = [Workout("run", "distance", 5.0, "easy", 0.0, 3)];
var day42 = [Workout("run", "distance", 7.0, "easy", 0.0, 5)];

var day43 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day44 = [Workout("run", "run", "distance", 3.0, "easy", 0.0, 2)];
var day45 = [Workout("run", "[workout", "distance", 400, "hard", 8.0, 4)];
var day46 = [Workout("run", "run", "distance", 3.0, "easy", 0.0, 2)];
var day47 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day48 = [Workout("run", "run", "distance", 5.0, "tempo", 0.0, 3)];
var day49 = [Workout("run", "run", "distance", 7.0, "easy", 0.0, 5)];

var day50 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day51 = [Workout("run", "run", "distance", 3.0, "easy", 0.0, 2)];
var day52 = [Workout("run", "run", "time", 30.0, "tempo", 0.0, 4)];
var day53 = [Workout("run", "run", "distance", 3.0, "easy", 0.0, 2)];
var day54 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day55 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day56 = [Workout("race", "race", "race", raceDistance, "race", 0.0, 5)];

List<Week> base5kPlan = [
  Week(day1, day2, day3, day4, day5, day6, day7, 1),
  Week(day8, day9, day10, day11, day12, day13, day14, 2),
  Week(day15, day16, day17, day18, day19, day20, day21, 3),
  Week(day22, day23, day24, day25, day26, day27, day28, 50),
  Week(day29, day30, day31, day32, day33, day34, day35, 4),
  Week(day36, day37, day38, day39, day40, day41, day42, 5),
  Week(day43, day44, day45, day46, day47, day48, day49, 6),
  Week(day50, day51, day52, day53, day54, day55, day56, 100),
];
