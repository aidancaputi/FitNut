import 'package:FitNut/plan_gen.dart';

var raceDistance = 70.3;

//notes:

//plan based from marathonhandbook.com
//swim workouts are in meters for volume
//bike workouts are in seconds for volume

//week 1
var day1 = [Workout("run", "not workout", "time", 16.0, "easy", 0.0, 1)]; //16 minute easy run
var day2 = [Workout("bike", "not workout", "time", 20.0, "easy", 0.0, 1)]; //20 minute easy bike
var day3 = [Workout("swim", "workout", "distance", 25.0, "hard", 10.0, 1)]; //10 x 25m swim
var day4 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day5 = [Workout("run", "not workout", "time", 24.0, "easy", 0.0, 2)]; //20 min easy run
var day6 = [Workout("swim", "workout", "distance", 50.0, "hard", 10.0, 2)]; //10 x 50m swim
var day7 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest

//week 2
var day8 = [Workout("run", "not workout", "time", 8.0, "easy", 0.0, 1)]; //8 min easy run
var day9 = [Workout("bike", "not workout", "time", 30.0, "easy", 0.0, 1)]; //30 min easy bike
var day10 = [Workout("swim", "workout", "distance", 100.0, "hard", 5.0, 2)]; //5 x 100m swim
var day11 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day12 = [Workout("run", "not workout", "distance", 2.0, "easy", 0.0, 2)]; //2 mile easy run
var day13 = [Workout("swim", "not workout", "time", 10.0, "easy", 0.0, 1)]; //10 min easy swim
var day14 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest

//week 3
var day15 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 1)]; //3 mile easy run
var day16 = [Workout("bike", "not workout", "time", 45.0, "easy", 0.0, 1)]; //45 min easy bike
var day17 = [Workout("swim", "workout", "distance", 50.0, "hard", 10.0, 2)]; //10 x 50m swim
var day18 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day19 = [Workout("run", "not workout", "distance", 3.5, "easy", 0.0, 1)]; //3.5 mile easy run
var day20 = [Workout("bike", "workout", "time", 120.0, "hard", 10.0, 2)]; //10 x 2 min bike workout
var day21 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
//done

//week 4
var day22 = [Workout("run", "not workout", "distance", 4.0, "easy", 0.0, 1), Workout("run", "workout", "distance", 75.0, "hard", 4.0, 1)]; //4 mile easy run and 4 x 75m run workout
var day23 = [Workout("bike", "not workout", "time", 50.0, "easy", 0.0, 2)]; //50 min easy bike
var day24 = [Workout("swim", "not workout", "time", 20.0, "easy", 0.0, 1)]; //20 min easy swim
var day25 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day26 = [Workout("run", "not workout", "distance", 3.0, "easy", 0.0, 1), Workout("run", "workout", "time", 60.0, "hard", 10.0, 1)]; //3 mile easy run and 10 x 1 min run workout
var day27 = [Workout("bike", "not workout", "time", 45.0, "easy", 0.0, 3), Workout("swim", "not workout", "time", 15.0, "easy", 0.0, 3)]; //45 min easy bike and 15 min easy swim
var day28 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
//done

//week 5
var day29 = [Workout("run", "not workout", "distance", 4.5, "easy", 0.0, 2), Workout("run", "workout", "distance", 75.0, "hard", 4.0, 2)]; // 4.5 mile run and 4 x 75m workout
var day30 = [Workout("bike", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 min easy bike
var day31 = [Workout("swim", "workout", "distance", 300.0, "hard", 2.0, 2)]; //2 x 300m swim
var day32 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day33 = [Workout("swim", "not workout", "time", 20.0, "easy", 0.0, 1)]; //20 min easy swim
var day34 = [Workout("bike", "not workout", "time", 30.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 10.0, "easy", 0.0, 2)]; //30 min bike, 10 min run
var day35 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
//done

//week 6
var day36 = [Workout("run", "not workout", "distance", 5.0, "easy", 0.0, 2), Workout("run", "workout", "distance", 75.0, "hard", 4.0, 2)]; // 5 mile run and 4 x 75m workout
var day37 = [Workout("bike", "not workout", "time", 70.0, "easy", 0.0, 2)]; //70 min easy bike
var day38 = [Workout("swim", "workout", "distance", 400.0, "hard", 3.0, 1)]; //3 x 400m swim
var day39 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day40 = [Workout("swim", "not workout", "distance", 1000.0, "easy", 0.0, 2)]; //1000m easy swim
var day41 = [
  Workout("swim", "not workout", "distance", 500.0, "easy", 0.0, 3),
  Workout("bike", "not workout", "distance", 10.0, "easy", 0.0, 3),
  Workout("run", "not workout", "distance", 2.0, "easy", 0.0, 3)
]; //swim 500m, run 2 miles, bike 10 miles
var day42 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
//done

//week 7
var day43 = [Workout("run", "not workout", "distance", 5.5, "easy", 0.0, 2), Workout("run", "workout", "distance", 75.0, "hard", 4.0, 2)]; // 5.5 mile run and 4 x 75m workout
var day44 = [Workout("bike", "not workout", "time", 75.0, "easy", 0.0, 2)]; //75 min easy bike
var day45 = [Workout("swim", "workout", "distance", 400.0, "hard", 4.0, 1)]; //4 x 400m swim
var day46 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day47 = [Workout("bike", "not workout", "time", 45.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 15.0, "easy", 0.0, 2)]; //45 min bike and 15 min run
var day48 = [Workout("bike", "workout", "time", 180.0, "hard", 5.0, 1)]; //5 x 3 min bike workout
var day49 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
//done

//week 8
var day50 = [Workout("run", "not workout", "distance", 6.0, "easy", 0.0, 2), Workout("run", "workout", "distance", 75.0, "hard", 4.0, 2)]; // 6.0 mile run and 4 x 75m workout
var day51 = [Workout("bike", "not workout", "time", 40.0, "easy", 0.0, 1)]; //40 min easy bike
var day52 = [Workout("swim", "not workout", "time", 20.0, "easy", 0.0, 2)]; //20 min easy swim
var day53 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day54 = [Workout("run", "not workout", "time", 20.0, "easy", 0.0, 1)]; //20 min easy run
var day55 = [
  Workout("swim", "not workout", "distance", 750.0, "race", 0.0, 3),
  Workout("bike", "not workout", "distance", 12.4, "race", 0.0, 3),
  Workout("run", "not workout", "distance", 3.1, "race", 0.0, 3)
]; //sprint race simulation (750m swim, 12.4 mile bike, 3.1 mile run)
var day56 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
//done

//week 9
var day57 = [Workout("run", "not workout", "distance", 5.0, "easy", 0.0, 2), Workout("run", "workout", "distance", 75.0, "hard", 4.0, 2)]; // 5 mile run and 4 x 75m workout
var day58 = [Workout("bike", "not workout", "distance", 15.0, "easy", 0.0, 1)]; //15 mile easy bike
var day59 = [Workout("swim", "workout", "distance", 200.0, "hard", 6.0, 2)]; //6 x 200m swim workout
var day60 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day61 = [Workout("bike", "not workout", "distance", 18.0, "easy", 0.0, 2)]; //18 mile easy bike
var day62 = [Workout("swim", "not workout", "distance", 600.0, "easy", 0.0, 1), Workout("swim", "workout", "distance", 25.0, "easy", 4.0, 1)]; //800m easy swim and 4 x 25m swim workout
var day63 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
//done

//week 10
var day64 = [Workout("run", "not workout", "distance", 7.0, "easy", 0.0, 2), Workout("run", "workout", "distance", 75.0, "hard", 4.0, 2)]; //7 mile run and 4 x 75m workout
var day65 = [Workout("bike", "not workout", "distance", 20.0, "easy", 0.0, 1)]; //20 mile easy bike
var day66 = [Workout("swim", "workout", "distance", 500.0, "hard", 3.0, 2), Workout("swim", "workout", "distance", 25.0, "hard", 4.0, 2)]; //3 x 500m swim workout and 4 x 25m swim workout
var day67 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day68 = [Workout("bike", "not workout", "time", 60.0, "easy", 0.0, 3), Workout("run", "not workout", "time", 30.0, "easy", 0.0, 3)]; //60 min bike, 30 min run
var day69 = [Workout("bike", "not workout", "time", 25.0, "tempo", 0.0, 1)]; //25 minute tempo bike
var day70 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
//done

//week 11
var day71 = [Workout("run", "not workout", "distance", 8.0, "easy", 0.0, 1), Workout("run", "workout", "distance", 75.0, "hard", 4.0, 1)]; //8 mile run and 4 x 75m workout
var day72 = [Workout("bike", "not workout", "distance", 25.0, "easy", 0.0, 1)]; //25 mile easy bike
var day73 = [Workout("swim", "not workout", "distance", 1000.0, "easy", 2.0, 2), Workout("swim", "workout", "distance", 25.0, "hard", 4.0, 2)]; //1000m easy swim and 4 x 25m swim workout
var day74 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day75 = [Workout("run", "not workout", "distance", 6.0, "tempo", 0.0, 3)]; //60 min bike, 30 min run
var day76 = [Workout("swim", "workout", "distance", 200.0, "hard", 8.0, 1)]; //8 x 200m swim workout
var day77 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
//done

//week 12
var day78 = [Workout("run", "not workout", "distance", 8.0, "easy", 0.0, 1), Workout("run", "workout", "distance", 75.0, "hard", 4.0, 1)]; //8 mile run and 4 x 75m workout
var day79 = [Workout("bike", "not workout", "distance", 30.0, "easy", 0.0, 1)]; //30 mile easy bike
var day80 = [Workout("swim", "not workout", "distance", 1200.0, "easy", 2.0, 2), Workout("swim", "workout", "distance", 25.0, "hard", 4.0, 2)]; //1200m easy swim and 4 x 25m swim workout
var day81 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day82 = [Workout("bike", "not workout", "time", 20.0, "easy", 0.0, 1)]; //20 min easy bike
var day83 = [
  Workout("swim", "not workout", "distance", 1200.0, "easy", 0.0, 3),
  Workout("bike", "not workout", "distance", 25.0, "easy", 0.0, 3),
  Workout("run", "not workout", "distance", 5.0, "easy", 0.0, 3)
]; //1200m swim, 25 mile bike, 5 mile run
var day84 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
//done

//week 13
var day85 = [Workout("run", "not workout", "distance", 5.0, "easy", 0.0, 2), Workout("run", "workout", "time", 90.0, "hard", 10.0, 2)]; //5 mile easy run and 10 x 90 second run workout
var day86 = [Workout("bike", "not workout", "time", 75.0, "easy", 0.0, 1)]; //75 minute easy bike
var day87 = [Workout("swim", "not workout", "distance", 1500.0, "easy", 2.0, 1)]; //1500m easy swim
var day88 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day89 = [Workout("run", "not workout", "distance", 10.0, "easy", 0.0, 1), Workout("run", "workout", "distance", 75.0, "hard", 4.0, 1)]; //10 mile run and 4 x 75m workout
var day90 = [Workout("swim", "workout", "distance", 300.0, "hard", 5.0, 2), Workout("swim", "workout", "distance", 25.0, "hard", 4.0, 2)]; //5 x 300m swim workout and 4 x 25m swim workout
var day91 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
//done

//week 14
var day92 = [Workout("run", "not workout", "distance", 10.0, "easy", 0.0, 1), Workout("run", "workout", "distance", 75.0, "hard", 4.0, 1)]; //10 mile run and 4 x 75m workout
var day93 = [Workout("bike", "not workout", "distance", 35.0, "easy", 0.0, 1)]; //35 mile easy bike
var day94 = [Workout("swim", "workout", "distance", 400.0, "hard", 5.0, 1)]; //5 x 400m swim workout
var day95 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day96 = [Workout("swim", "not workout", "distance", 1500.0, "easy", 0.0, 2)]; //1500m easy swim
var day97 = [Workout("bike", "not workout", "distance", 25.0, "easy", 0.0, 2)]; //25 mile easy bike
var day98 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
//done

//week 15
var day99 = [Workout("run", "not workout", "distance", 12.0, "easy", 0.0, 2), Workout("run", "workout", "distance", 75.0, "hard", 4.0, 2)]; //12 mile run and 4 x 75m workout
var day100 = [Workout("bike", "not workout", "distance", 40.0, "easy", 0.0, 1)]; //40 mile easy bike
var day101 = [Workout("swim", "workout", "distance", 500.0, "hard", 4.0, 1)]; //4 x 500m swim workout
var day102 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day103 = [Workout("run", "not workout", "distance", 5.0, "easy", 0.0, 2), Workout("run", "workout", "time", 90.0, "hard", 10.0, 2)]; //5 mile easy run and 10 x 90 seconds run workout
var day104 = [Workout("swim", "not workout", "distance", 1200.0, "easy", 0.0, 2), Workout("bike", "not workout", "distance", 20.0, "easy", 0.0, 2)]; //1200m easy swim and 20 mile easy bike
var day105 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
//done

//week 16
var day106 = [Workout("run", "not workout", "distance", 8.0, "easy", 0.0, 2), Workout("run", "workout", "distance", 75.0, "hard", 4.0, 2)]; //8 mile run and 4 x 75m workout
var day107 = [Workout("bike", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy bike
var day108 = [Workout("swim", "not workout", "time", 30.0, "easy", 0.0, 1)]; //30 minute easy swim
var day109 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day110 = [Workout("bike", "not workout", "time", 20.0, "easy", 0.0, 2)]; //20 min easy bike
var day111 = [Workout("run", "not workout", "distance", 13.1, "easy", 0.0, 2)]; //half marathon run
var day112 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
//done

//week 17
var day113 = [Workout("run", "not workout", "distance", 5.5, "easy", 0.0, 2), Workout("run", "workout", "distance", 75.0, "hard", 4.0, 2)]; //5.5 mile run and 4 x 75m workout
var day114 = [Workout("bike", "not workout", "time", 45.0, "easy", 0.0, 1)]; //45 minute easy bike
var day115 = [Workout("swim", "not workout", "distance", 1800.0, "easy", 0.0, 1)]; //1800m easy swim
var day116 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day117 = [Workout("bike", "not workout", "time", 60.0, "easy", 0.0, 2)]; //60 minute easy bike
var day118 = [Workout("swim", "workout", "distance", 300.0, "hard", 6.0, 2), Workout("swim", "workout", "distance", 25.0, "hard", 4.0, 2)]; //6 x 300m and 4 x 25m swim workouts
var day119 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
//done

//week 18
var day120 = [Workout("run", "not workout", "distance", 12.0, "easy", 0.0, 2), Workout("run", "workout", "distance", 75.0, "hard", 4.0, 2)]; //12 mile run and 4 x 75m workout
var day121 = [Workout("bike", "not workout", "time", 75.0, "easy", 0.0, 1)]; //75 minute easy bike
var day122 = [Workout("swim", "workout", "distance", 500.0, "hard", 4.0, 1)]; //4 x 500m swim workout
var day123 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day124 = [Workout("swim", "not workout", "distance", 2000.0, "easy", 0.0, 2)]; //2000m easy swim
var day125 = [Workout("bike", "not workout", "distance", 60.0, "easy", 0.0, 2)]; //60 mile easy bike
var day126 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
//done

//week 19
var day127 = [Workout("run", "not workout", "distance", 10.0, "easy", 0.0, 2), Workout("run", "workout", "distance", 75.0, "hard", 4.0, 2)]; //10 mile run and 4 x 75m workout
var day128 = [Workout("bike", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy bike
var day129 = [Workout("swim", "workout", "distance", 1000.0, "hard", 2.0, 1)]; //2 x 1000m swim workout
var day130 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day131 = [Workout("run", "not workout", "distance", 6.0, "easy", 0.0, 2), Workout("run", "workout", "time", 45.0, "easy", 12.0, 2)]; //6 mile easy run and 12 x 45 sec run workout
var day132 = [Workout("swim", "not workout", "distance", 1500.0, "easy", 0.0, 2), Workout("bike", "not workout", "distance", 30.0, "easy", 0.0, 2)]; //1500m easy swim and 30 mile easy bike
var day133 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
//done

//week 20
var day134 = [Workout("run", "not workout", "distance", 6.0, "easy", 0.0, 2), Workout("run", "workout", "distance", 75.0, "hard", 4.0, 2)]; //6 mile run and 4 x 75m workout
var day135 = [Workout("bike", "not workout", "time", 50.0, "easy", 0.0, 1)]; //50 minute easy bike
var day136 = [Workout("swim", "not workout", "time", 30.0, "easy", 0.0, 1)]; //30 minute easy swim
var day137 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day138 = [Workout("run", "not workout", "time", 20.0, "easy", 0.0, 2)]; //20 minute easy run
var day139 = [Workout("bike", "not workout", "time", 20.0, "easy", 0.0, 2)]; //20 minute easy bike
var day140 = [Workout("race", "race", "race", raceDistance, "race", 0.0, 100)]; //race
//done

List<Week> baseHalfIMPlan = [
  Week(day1, day2, day3, day4, day5, day6, day7, 1),
  Week(day8, day9, day10, day11, day12, day13, day14, 2),
  Week(day15, day16, day17, day18, day19, day20, day21, 3),
  Week(day22, day23, day24, day25, day26, day27, day28, 4),
  Week(day29, day30, day31, day32, day33, day34, day35, 5),
  Week(day36, day37, day38, day39, day40, day41, day42, 6),
  Week(day43, day44, day45, day46, day47, day48, day49, 7),
  Week(day50, day51, day52, day53, day54, day55, day56, 8),
  Week(day57, day58, day59, day60, day61, day62, day63, 9),
  Week(day64, day65, day66, day67, day68, day69, day70, 10),
  Week(day71, day72, day73, day74, day75, day76, day77, 11),
  Week(day78, day79, day80, day81, day82, day83, day84, 12),
  Week(day85, day86, day87, day88, day89, day90, day91, 13),
  Week(day92, day93, day94, day95, day96, day97, day98, 14),
  Week(day99, day100, day101, day102, day103, day104, day105, 15),
  Week(day106, day107, day108, day109, day110, day111, day112, 16),
  Week(day113, day114, day115, day116, day117, day118, day119, 17),
  Week(day120, day121, day122, day123, day124, day125, day126, 18),
  Week(day127, day128, day129, day130, day131, day132, day133, 19),
  Week(day134, day135, day136, day137, day138, day139, day140, 100),
];
