import 'package:FitNut/plan_gen.dart';

//plan based from hal higdon plans

var raceDistance = 3.1;

var day1 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day2 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 2)];
var day3 = [Workout("run", "workout", "distance", 400, "hard", 5.0, 3)];
var day4 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 2)];
var day5 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day6 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 2)];
var day7 = [Workout("run", "not workout", "distance", 5.0, "easy", 0.0, 5)];

var day8 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day9 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 2)];
var day10 = [Workout("run", "not workout", "time", 30.0, "tempo", 0.0, 4)];
var day11 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 2)];
var day12 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day13 = [Workout("run", "not workout", "distance", 3.0, "tempo", 0.0, 3)];
var day14 = [Workout("run", "not workout", "distance", 5.0, "easy", 0.0, 5)];

var day15 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day16 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 2)];
var day17 = [Workout("run", "workout", "distance", 400, "hard", 6.0, 4)];
var day18 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 2)];
var day19 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day20 = [Workout("run", "not workout", "distance", 4.0, "easy", 0.0, 3)];
var day21 = [Workout("run", "not workout", "distance", 6.0, "easy", 0.0, 5)];

var day22 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day23 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 2)];
var day24 = [Workout("run", "not workout", "time", 35.0, "tempo", 0.0, 4)];
var day25 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 0)];
var day26 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day27 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day28 = [Workout("run", "not workout", "distance", raceDistance, "race", 0.0, 7)];

var day29 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day30 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 2)];
var day31 = [Workout("run", "workout", "distance", 400, "hard", 7.0, 4)];
var day32 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 2)];
var day33 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day34 = [Workout("run", "not workout", "distance", 4.0, "tempo", 0.0, 3)];
var day35 = [Workout("run", "not workout", "distance", 6.0, "easy", 0.0, 5)];

var day36 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day37 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 2)];
var day38 = [Workout("run", "not workout", "time", 40.0, "tempo", 0.0, 4)];
var day39 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 2)];
var day40 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day41 = [Workout("run", "not workout", "distance", 5.0, "easy", 0.0, 3)];
var day42 = [Workout("run", "not workout", "distance", 7.0, "easy", 0.0, 5)];

var day43 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day44 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 2)];
var day45 = [Workout("run", "workout", "distance", 400, "hard", 8.0, 4)];
var day46 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 2)];
var day47 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day48 = [Workout("run", "not workout", "distance", 5.0, "tempo", 0.0, 3)];
var day49 = [Workout("run", "not workout", "distance", 7.0, "easy", 0.0, 5)];

var day50 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day51 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 2)];
var day52 = [Workout("run", "not workout", "time", 30.0, "tempo", 0.0, 4)];
var day53 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 2)];
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
