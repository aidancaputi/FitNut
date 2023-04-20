import 'package:FitNut/plan_gen.dart';

//plan based from hal higdon plans

var raceDistance = 6.2;

//week 1
var day1 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 2)]; //3 mile easy run
var day2 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 2)]; //3 mile easy run
var day3 = [Workout("run", "not workout", "time", 35.0, "tempo", 0.0, 4)]; //35 minute tempo run
var day4 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 3)]; //3 mile easy run
var day5 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day6 = [Workout("cross", "cross", "cross", 0.0, "cross", 0.0, 1)]; //cross train
var day7 = [Workout("run", "not workout", "distance", 4.0, "easy", 0.0, 5)]; //4 mile easy run

//week 2
var day8 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 2)]; //3 mile easy run
var day9 = [Workout("run", "not workout", "distance", 3.5, "easy", 0.0, 2)]; //3.5 mile easy run
var day10 = [Workout("run", "workout", "distance", 400.0, "hard", 8.0, 4)]; //8 x 400m run workout
var day11 = [Workout("run", "not workout", "distance", 4.0, "easy", 0.0, 3)]; //4 mile easy run
var day12 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day13 = [Workout("cross", "cross", "cross", 0.0, "cross", 0.0, 1)]; //cross train
var day14 = [Workout("run", "not workout", "distance", 5.0, "easy", 0.0, 5)]; //5 mile easy run

//week 3
var day15 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 2)]; //3 mile easy run
var day16 = [Workout("run", "not workout", "distance", 4.0, "easy", 0.0, 2)]; //4 mile easy run
var day17 = [Workout("run", "not workout", "time", 40.0, "tempo", 0.0, 4)]; //40 minute tempo run
var day18 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 3)]; //3 mile easy run
var day19 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day20 = [Workout("cross", "cross", "cross", 0.0, "cross", 0.0, 1)]; //cross train
var day21 = [Workout("run", "not workout", "distance", 6.0, "easy", 0.0, 5)]; //6 mile easy run

//week 4
var day22 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 2)]; //3 mile easy run
var day23 = [Workout("run", "not workout", "distance", 4.5, "easy", 0.0, 2)]; //4.5 mile easy run
var day24 = [Workout("run", "workout", "distance", 400.0, "hard", 9.0, 4)]; //9 x 400m run workout
var day25 = [Workout("run", "not workout", "distance", 4.0, "easy", 0.0, 3)]; //4 mile easy run
var day26 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day27 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 1)]; //rest
var day28 = [Workout("run", "not workout", "distance", 3.1, "race", 0.0, 5)]; //5k run race pace

//week 5
var day29 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 2)]; //3 mile easy run
var day30 = [Workout("run", "not workout", "distance", 5.0, "easy", 0.0, 2)]; //5 mile easy run
var day31 = [Workout("run", "not workout", "time", 45.0, "tempo", 0.0, 4)]; //45 minute tempo run
var day32 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 3)]; //3 mile easy run
var day33 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day34 = [Workout("cross", "cross", "cross", 0.0, "cross", 0.0, 1)]; //cross train
var day35 = [Workout("run", "not workout", "distance", 6.0, "easy", 0.0, 5)]; //6 mile easy run

//week 6
var day36 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 2)]; //3 mile easy run
var day37 = [Workout("run", "not workout", "distance", 5.5, "easy", 0.0, 2)]; //5.5 mile easy run
var day38 = [Workout("run", "workout", "distance", 400.0, "hard", 10.0, 4)]; //10 x 400m run workout
var day39 = [Workout("run", "not workout", "distance", 4.0, "easy", 0.0, 3)]; //4 mile easy run
var day40 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day41 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day42 = [Workout("run", "not workout", "distance", 7.0, "easy", 0.0, 5)]; //7 mile easy run

//week 7
var day43 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 2)]; //3 mile easy run
var day44 = [Workout("run", "not workout", "distance", 6.0, "easy", 0.0, 2)]; //6 mile easy run
var day45 = [Workout("run", "not workout", "time", 50.0, "tempo", 0.0, 4)]; //50 minute tempo run
var day46 = [Workout("run", "not workout", "distance", 4.0, "easy", 0.0, 3)]; //4 mile easy run
var day47 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day48 = [Workout("cross", "cross", "cross", 0.0, "cross", 0.0, 1)]; //cross train
var day49 = [Workout("run", "not workout", "distance", 8.0, "easy", 0.0, 5)]; //8 mile easy run

//week 8
var day50 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 2)]; //3 mile easy run
var day51 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 2)]; //3 mile easy run
var day52 = [Workout("run", "workout", "distance", 400.0, "hard", 5.0, 4)]; //5 x 400m run workout
var day53 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 3)]; //3 mile easy run
var day54 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day55 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day56 = [Workout("race", "race", "race", raceDistance, "race", 0.0, 100)]; //race day

List<Week> base10kPlan = [
  Week(day1, day2, day3, day4, day5, day6, day7, 1),
  Week(day8, day9, day10, day11, day12, day13, day14, 2),
  Week(day15, day16, day17, day18, day19, day20, day21, 3),
  Week(day22, day23, day24, day25, day26, day27, day28, 50),
  Week(day29, day30, day31, day32, day33, day34, day35, 4),
  Week(day36, day37, day38, day39, day40, day41, day42, 5),
  Week(day43, day44, day45, day46, day47, day48, day49, 6),
  Week(day50, day51, day52, day53, day54, day55, day56, 100),
];
