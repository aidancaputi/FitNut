import 'package:FitNut/plan_gen.dart';

var raceDistance = 16.0;

//notes:

//swim workouts are in meters for volume
//bike workouts are in seconds for volume

//week 1
var day1 = [Workout("run", "not workout", "time", 16.0, "easy", 0.0, 0)];
var day2 = [Workout("bike", "not workout", "time", 20.0, "easy", 0.0, 0)];
var day3 = [Workout("swim", "workout", "distance", 25.0, "hard", 10.0, 0)];
var day4 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day5 = [Workout("run", "not workout", "time", 24.0, "easy", 0.0, 0)];
var day6 = [Workout("swim", "workout", "distance", 50.0, "hard", 10.0, 0)];
var day7 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];

//week 2
var day8 = [Workout("run", "not workout", "time", 20.0, "easy", 0.0, 0)];
var day9 = [Workout("bike", "not workout", "time", 30.0, "easy", 0.0, 0)];
var day10 = [Workout("swim", "workout", "distance", 100.0, "hard", 5.0, 0)];
var day11 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day12 = [Workout("run", "not workout", "distance", 2.0, "easy", 0.0, 0)];
var day13 = [Workout("swim", "not workout", "time", 10.0, "easy", 0.0, 0)];
var day14 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];

//week 3
var day15 = [Workout("run", "not workout", "distance", 1.0, "easy", 0.0, 0)];
var day16 = [Workout("bike", "not workout", "time", 45.0, "easy", 0.0, 0)]; //
var day17 = [Workout("swim", "workout", "distance", 50.0, "hard", 10.0, 0)]; //10 x 50m
var day18 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //
var day19 = [Workout("run", "not workout", "distance", 1.5, "easy", 0.0, 0)]; //
var day20 = [Workout("bike", "workout", "time", 120.0, "hard", 10.0, 0)]; //10 x 120 sec
var day21 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];

//week 4
var day22 = [Workout("run", "not workout", "distance", 2.0, "easy", 0.0, 0)];
var day23 = [Workout("bike", "not workout", "time", 50.0, "easy", 0.0, 0)];
var day24 = [Workout("swim", "not workout", "time", 15.0, "easy", 0.0, 0)]; //
var day25 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)];
var day26 = [Workout("run", "workout", "time", 60.0, "hard", 10.0, 0)]; //10 x 60 sec
var day27 = [Workout("bike", "workout", "time", 120.0, "hard", 10.0, 0), Workout("swim", "not workout", "time", 10.0, "easy", 0.0, 0)]; //10 x 2 min bike workout and 10 min easy swim
var day28 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //

//week 5
var day29 = [Workout("run", "not workout", "distance", 2.0, "easy", 0.0, 0), Workout("run", "workout", "distance", 50.0, "hard", 4.0, 0)]; // 2 mile run and 4 x 50m workout
var day30 = [Workout("bike", "not workout", "time", 60.0, "easy", 0.0, 0)]; //60 min easy bike
var day31 = [Workout("swim", "workout", "distance", 300.0, "hard", 2.0, 0)]; //2 x 300m swim
var day32 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day33 = [Workout("swim", "not workout", "time", 20.0, "easy", 0.0, 0)]; //20 min easy swim
var day34 = [Workout("bike", "not workout", "time", 30.0, "easy", 0.0, 0), Workout("run", "not workout", "time", 10.0, "easy", 0.0, 0)]; //30 min bike, 10 min run
var day35 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest

//week 6
var day36 = [Workout("run", "not workout", "distance", 2.5, "easy", 0.0, 0), Workout("run", "workout", "distance", 50.0, "hard", 4.0, 0)]; // 2.5 mile run and 4 x 50m workout
var day37 = [Workout("bike", "not workout", "time", 70.0, "easy", 0.0, 0)]; //70 min easy bike
var day38 = [Workout("swim", "workout", "distance", 400.0, "hard", 2.0, 0)]; //2 x 400m swim
var day39 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day40 = [Workout("swim", "not workout", "distance", 600.0, "easy", 0.0, 0)]; //600m easy swim
var day41 = [
  Workout("swim", "not workout", "distance", 500.0, "easy", 0.0, 0),
  Workout("run", "not workout", "distance", 2.0, "easy", 0.0, 0),
  Workout("bike", "not workout", "distance", 10.0, "easy", 0.0, 0)
]; //swim 500m, run 2 miles, bike 10 miles
var day42 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest

//week 7
var day43 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 0), Workout("run", "workout", "distance", 75.0, "hard", 4.0, 0)]; // 3.0 mile run and 4 x 75m workout
var day44 = [Workout("bike", "not workout", "time", 75.0, "easy", 0.0, 0)]; //75 min easy bike
var day45 = [Workout("swim", "workout", "distance", 400.0, "hard", 2.0, 0)]; //2 x 400m swim
var day46 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day47 = [Workout("bike", "not workout", "time", 45.0, "easy", 0.0, 0), Workout("run", "not workout", "time", 15.0, "easy", 0.0, 0)]; //45 min bike and 15 min run
var day48 = [Workout("bike", "workout", "time", 180.0, "hard", 5.0, 0)]; //5 x 3 min bike workout
var day49 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest

//week 8
var day50 = [Workout("run", "not workout", "distance", 2.0, "easy", 0.0, 0), Workout("run", "workout", "distance", 75.0, "hard", 4.0, 0)]; // 2.0 mile run and 4 x 75m workout
var day51 = [Workout("bike", "not workout", "time", 30.0, "easy", 0.0, 0)]; //30 min easy bike
var day52 = [Workout("swim", "not workout", "time", 10.0, "easy", 0.0, 0)]; //10 min easy swim
var day53 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day54 = [Workout("run", "not workout", "time", 15.0, "easy", 0.0, 0)]; //15 min easy run
var day55 = [Workout("bike", "not workout", "time", 15.0, "easy", 0.0, 0)]; //15 min easy bike
var day56 = [Workout("race", "race", "race", raceDistance, "race", 0.0, 5)]; //race day

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
