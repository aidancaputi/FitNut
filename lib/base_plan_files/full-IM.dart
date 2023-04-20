import 'package:FitNut/plan_gen.dart';

var raceDistance = 140.6;

//notes:

//plan based from ironman.com
//swim workouts are in meters for volume
//bike workouts are in seconds for volume

//week 1 - month 1
var day1 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy swim
var day2 = [Workout("bike", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy bike
var day3 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day4 = [Workout("run", "not workout", "time", 45.0, "easy", 0.0, 1)]; //45 min easy run
var day5 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 2)]; //60 minute easy swim
var day6 = [Workout("run", "not workout", "time", 60.0, "easy", 0.0, 2)]; //60 min easy run
var day7 = [Workout("bike", "not workout", "time", 120.0, "easy", 0.0, 3)]; //120 minute easy bike

//week 2 - month 1
var day8 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy swim
var day9 = [Workout("bike", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy bike
var day10 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day11 = [Workout("run", "not workout", "time", 45.0, "easy", 0.0, 1)]; //45 min easy run
var day12 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 2)]; //60 minute easy swim
var day13 = [Workout("run", "not workout", "time", 60.0, "easy", 0.0, 2)]; //60 min easy run
var day14 = [Workout("bike", "not workout", "time", 120.0, "easy", 0.0, 3)]; //120 minute easy bike

//week 3 - month 1
var day15 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy swim
var day16 = [Workout("bike", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy bike
var day17 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day18 = [Workout("run", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 min easy run
var day19 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 2)]; //60 minute easy swim
var day20 = [Workout("run", "not workout", "time", 60.0, "easy", 0.0, 2)]; //60 min easy run
var day21 = [Workout("bike", "not workout", "time", 180.0, "easy", 0.0, 3)]; //180 minute easy bike
//done

//week 4 - month 1
var day22 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy swim
var day23 = [Workout("bike", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy bike
var day24 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day25 = [Workout("run", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 min easy run
var day26 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 2)]; //60 minute easy swim
var day27 = [Workout("run", "not workout", "time", 60.0, "easy", 0.0, 2)]; //60 min easy run
var day28 = [Workout("bike", "not workout", "time", 180.0, "easy", 0.0, 3)]; //180 minute easy bike
//done

//week 5 - month 2
var day29 = [Workout("swim", "not workout", "time", (60.0 * 1.1), "easy", 0.0, 1)]; //60 minute easy swim + 10%
var day30 = [Workout("bike", "not workout", "time", (60.0 * 1.1), "easy", 0.0, 1)]; //60 minute easy bike + 10%
var day31 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day32 = [Workout("run", "not workout", "time", (60.0 * 1.1), "easy", 0.0, 1)]; //60 min easy run + 10%
var day33 = [Workout("swim", "not workout", "time", (60.0 * 1.1), "easy", 0.0, 2)]; //60 minute easy swim + 10%
var day34 = [Workout("run", "not workout", "time", (60.0 * 1.1), "easy", 0.0, 2)]; //60 min easy run + 10%
var day35 = [Workout("bike", "not workout", "time", (180.0 * 1.1), "easy", 0.0, 3)]; //180 minute easy bike + 10%
//done

//week 6 - month 2
var day36 = [Workout("swim", "not workout", "time", (60.0 * 1.2), "easy", 0.0, 1)]; //60 minute easy swim + 20%
var day37 = [Workout("bike", "not workout", "time", (60.0 * 1.2), "easy", 0.0, 1)]; //60 minute easy bike + 20%
var day38 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day39 = [Workout("run", "not workout", "time", (60.0 * 1.2), "easy", 0.0, 1)]; //60 min easy run + 20%
var day40 = [Workout("swim", "not workout", "time", (60.0 * 1.2), "easy", 0.0, 2)]; //60 minute easy swim + 20%
var day41 = [Workout("run", "not workout", "time", (60.0 * 1.2), "easy", 0.0, 2)]; //60 min easy run + 20%
var day42 = [Workout("bike", "not workout", "time", (180.0 * 1.2), "easy", 0.0, 3)]; //180 minute easy bike + 20%
//done

//week 7 - month 2
var day43 = [Workout("swim", "not workout", "time", (60.0 * 1.3), "easy", 0.0, 1)]; //60 minute easy swim + 30%
var day44 = [Workout("bike", "not workout", "time", (60.0 * 1.3), "easy", 0.0, 1)]; //60 minute easy bike + 30%
var day45 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day46 = [Workout("run", "not workout", "time", (60.0 * 1.3), "easy", 0.0, 1)]; //60 min easy run + 30%
var day47 = [Workout("swim", "not workout", "time", (60.0 * 1.3), "easy", 0.0, 2)]; //60 minute easy swim + 30%
var day48 = [Workout("run", "not workout", "time", (60.0 * 1.3), "easy", 0.0, 2)]; //60 min easy run + 30%
var day49 = [Workout("bike", "not workout", "time", (180.0 * 1.3), "easy", 0.0, 3)]; //180 minute easy bike + 30%
//done

//week 8 - month 2
var day50 = [Workout("swim", "not workout", "time", (60.0 * 1.4), "easy", 0.0, 1)]; //60 minute easy swim + 40%
var day51 = [Workout("bike", "not workout", "time", (60.0 * 1.4), "easy", 0.0, 1)]; //60 minute easy bike + 40%
var day52 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day53 = [Workout("run", "not workout", "time", (60.0 * 1.4), "easy", 0.0, 1)]; //60 min easy run + 40%
var day54 = [Workout("swim", "not workout", "time", (60.0 * 1.4), "easy", 0.0, 2)]; //60 minute easy swim + 40%
var day55 = [Workout("run", "not workout", "time", (60.0 * 1.4), "easy", 0.0, 2)]; //60 min easy run + 40%
var day56 = [Workout("bike", "not workout", "time", (180.0 * 1.4), "easy", 0.0, 3)]; //180 minute easy bike + 40%
//done

//week 9 - month 3
var day57 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day58 = [Workout("bike", "not workout", "time", 90.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 60.0, "easy", 0.0, 2)]; //90 minute easy bike and 60 minute easy run
var day59 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy swim
var day60 = [Workout("bike", "not workout", "time", 90.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 60.0, "easy", 0.0, 2)]; //90 minute easy bike and 60 minute easy run
var day61 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy swim
var day62 = [Workout("bike", "not workout", "time", 180.0, "easy", 0.0, 3), Workout("run", "not workout", "time", 15.0, "easy", 0.0, 3)]; //180 minute easy bike and 15 minute easy run
var day63 = [Workout("swim", "not workout", "time", 40.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 90.0, "easy", 0.0, 2)]; //40 minute swim and 90 minute run
//done

//week 10 - month 3
var day64 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day65 = [Workout("bike", "not workout", "time", 90.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 60.0, "easy", 0.0, 2)]; //90 minute easy bike and 60 minute easy run
var day66 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy swim
var day67 = [Workout("bike", "not workout", "time", 90.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 60.0, "easy", 0.0, 2)]; //90 minute easy bike and 60 minute easy run
var day68 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy swim
var day69 = [Workout("bike", "not workout", "time", 180.0, "easy", 0.0, 3), Workout("run", "not workout", "time", 15.0, "easy", 0.0, 3)]; //180 minute easy bike and 15 minute easy run
var day70 = [Workout("swim", "not workout", "time", 40.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 90.0, "easy", 0.0, 2)]; //40 minute swim and 90 minute run
//done

//week 11 - month 3
var day71 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day72 = [Workout("bike", "not workout", "time", 90.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 60.0, "easy", 0.0, 2)]; //90 minute easy bike and 60 minute easy run
var day73 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy swim
var day74 = [Workout("bike", "not workout", "time", 90.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 60.0, "easy", 0.0, 2)]; //90 minute easy bike and 60 minute easy run
var day75 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy swim
var day76 = [Workout("bike", "not workout", "time", 240.0, "easy", 0.0, 3), Workout("run", "not workout", "time", 15.0, "easy", 0.0, 3)]; //240 minute easy bike and 15 minute easy run
var day77 = [Workout("swim", "not workout", "time", 40.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 90.0, "easy", 0.0, 2)]; //40 minute swim and 90 minute run
//done

//week 12 - month 3
var day78 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day79 = [Workout("bike", "not workout", "time", 90.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 60.0, "easy", 0.0, 2)]; //90 minute easy bike and 60 minute easy run
var day80 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy swim
var day81 = [Workout("bike", "not workout", "time", 90.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 60.0, "easy", 0.0, 2)]; //90 minute easy bike and 60 minute easy run
var day82 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy swim
var day83 = [Workout("bike", "not workout", "time", 240.0, "easy", 0.0, 3), Workout("run", "not workout", "time", 15.0, "easy", 0.0, 3)]; //240 minute easy bike and 15 minute easy run
var day84 = [Workout("swim", "not workout", "time", 40.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 90.0, "easy", 0.0, 2)]; //40 minute swim and 90 minute run
//done

//week 13 - month 4
var day85 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day86 = [Workout("bike", "not workout", "time", 90.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 70.0, "easy", 0.0, 2)]; //90 minute easy bike and 70 minute easy run
var day87 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy swim
var day88 = [Workout("bike", "not workout", "time", 120.0, "easy", 0.0, 2)]; //120 minute bike
var day89 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy swim
var day90 = [Workout("bike", "not workout", "time", 240.0, "easy", 0.0, 3), Workout("run", "not workout", "time", 20.0, "easy", 0.0, 3)]; //240 minute easy bike and 20 minute easy run
var day91 = [Workout("swim", "not workout", "time", 45.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 105.0, "easy", 0.0, 2)]; //45 minute swim and 105 minute run
//done

//week 14 - month 4
var day92 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day93 = [Workout("bike", "not workout", "time", 90.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 70.0, "easy", 0.0, 2)]; //90 minute easy bike and 70 minute easy run
var day94 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy swim
var day95 = [Workout("bike", "not workout", "time", 120.0, "easy", 0.0, 2)]; //120 minute bike
var day96 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy swim
var day97 = [Workout("bike", "not workout", "time", 240.0, "easy", 0.0, 3), Workout("run", "not workout", "time", 20.0, "easy", 0.0, 3)]; //240 minute easy bike and 20 minute easy run
var day98 = [Workout("swim", "not workout", "time", 45.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 105.0, "easy", 0.0, 2)]; //45 minute swim and 105 minute run
//done

//week 15 - month 4
var day99 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day100 = [Workout("bike", "not workout", "time", 90.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 70.0, "easy", 0.0, 2)]; //90 minute easy bike and 70 minute easy run
var day101 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy swim
var day102 = [Workout("bike", "not workout", "time", 120.0, "easy", 0.0, 2)]; //120 minute bike
var day103 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy swim
var day104 = [Workout("bike", "not workout", "time", 300.0, "easy", 0.0, 3), Workout("run", "not workout", "time", 20.0, "easy", 0.0, 3)]; //300 minute easy bike and 20 minute easy run
var day105 = [Workout("swim", "not workout", "time", 45.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 105.0, "easy", 0.0, 2)]; //45 minute swim and 105 minute run
//done

//week 16 - month 4
var day106 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day107 = [Workout("bike", "not workout", "time", 90.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 70.0, "easy", 0.0, 2)]; //90 minute easy bike and 70 minute easy run
var day108 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy swim
var day109 = [Workout("bike", "not workout", "time", 120.0, "easy", 0.0, 2)]; //120 minute bike
var day110 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy swim
var day111 = [Workout("bike", "not workout", "time", 300.0, "easy", 0.0, 3), Workout("run", "not workout", "time", 20.0, "easy", 0.0, 3)]; //300 minute easy bike and 20 minute easy run
var day112 = [Workout("swim", "not workout", "time", 45.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 105.0, "easy", 0.0, 2)]; //45 minute swim and 105 minute run
//done

//week 17 - month 5
var day113 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day114 = [Workout("bike", "not workout", "time", 120.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 60.0, "easy", 0.0, 2)]; //120 minute easy bike and 60 minute easy run
var day115 = [Workout("swim", "not workout", "distance", 4000.0, "easy", 0.0, 1)]; //4000m minute easy swim
var day116 = [Workout("bike", "not workout", "time", 90.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 90.0, "easy", 0.0, 2)]; //90 minute easy bike and 90 minute easy run
var day117 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy swim
var day118 = [Workout("bike", "not workout", "time", 360.0, "easy", 0.0, 3), Workout("run", "not workout", "time", 10.0, "easy", 0.0, 3)]; //360 minute easy bike and 10 minute easy run
var day119 = [
  Workout("swim", "not workout", "time", 45.0, "easy", 0.0, 3),
  Workout("bike", "not workout", "time", 60.0, "easy", 0.0, 3),
  Workout("run", "not workout", "time", 120.0, "easy", 0.0, 3)
]; //45 minute swim and 60 minute easy bike and 120 minute easy run
//done

//week 18 - month 5
var day120 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day121 = [Workout("bike", "not workout", "time", 120.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 60.0, "easy", 0.0, 2)]; //120 minute easy bike and 60 minute easy run
var day122 = [Workout("swim", "not workout", "distance", 4000.0, "easy", 0.0, 1)]; //4000m minute easy swim
var day123 = [Workout("bike", "not workout", "time", 90.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 90.0, "easy", 0.0, 2)]; //90 minute easy bike and 90 minute easy run
var day124 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy swim
var day125 = [Workout("bike", "not workout", "time", 360.0, "easy", 0.0, 3), Workout("run", "not workout", "time", 10.0, "easy", 0.0, 3)]; //360 minute easy bike and 10 minute easy run
var day126 = [
  Workout("swim", "not workout", "time", 45.0, "easy", 0.0, 3),
  Workout("bike", "not workout", "time", 60.0, "easy", 0.0, 3),
  Workout("run", "not workout", "time", 120.0, "easy", 0.0, 3)
]; //45 minute swim and 60 minute easy bike and 120 minute easy run
//done

//week 19 - month 5
var day127 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day128 = [Workout("bike", "not workout", "time", 120.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 60.0, "easy", 0.0, 2)]; //120 minute easy bike and 60 minute easy run
var day129 = [Workout("swim", "not workout", "distance", 4000.0, "easy", 0.0, 1)]; //4000m minute easy swim
var day130 = [Workout("bike", "not workout", "time", 90.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 90.0, "easy", 0.0, 2)]; //90 minute easy bike and 90 minute easy run
var day131 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy swim
var day132 = [Workout("bike", "not workout", "time", 420.0, "easy", 0.0, 3), Workout("run", "not workout", "time", 10.0, "easy", 0.0, 3)]; //420 minute easy bike and 10 minute easy run
var day133 = [
  Workout("swim", "not workout", "time", 45.0, "easy", 0.0, 3),
  Workout("bike", "not workout", "time", 60.0, "easy", 0.0, 3),
  Workout("run", "not workout", "time", 120.0, "easy", 0.0, 3)
]; //45 minute swim and 60 minute easy bike and 120 minute easy run
//done

//week 20 - month 5
var day134 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day135 = [Workout("bike", "not workout", "time", 120.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 60.0, "easy", 0.0, 2)]; //120 minute easy bike and 60 minute easy run
var day136 = [Workout("swim", "not workout", "distance", 4000.0, "easy", 0.0, 1)]; //4000m minute easy swim
var day137 = [Workout("bike", "not workout", "time", 90.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 90.0, "easy", 0.0, 2)]; //90 minute easy bike and 90 minute easy run
var day138 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy swim
var day139 = [Workout("bike", "not workout", "time", 420.0, "easy", 0.0, 3), Workout("run", "not workout", "time", 10.0, "easy", 0.0, 3)]; //420 minute easy bike and 10 minute easy run
var day140 = [
  Workout("swim", "not workout", "time", 45.0, "easy", 0.0, 3),
  Workout("bike", "not workout", "time", 60.0, "easy", 0.0, 3),
  Workout("run", "not workout", "time", 120.0, "easy", 0.0, 3)
]; //45 minute swim and 60 minute easy bike and 120 minute easy run
//done

//week 21 - month 6
var day141 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day142 = [Workout("bike", "not workout", "time", 90.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 60.0, "easy", 0.0, 2)]; //90 minute easy bike and 60 minute easy run
var day143 = [Workout("swim", "not workout", "distance", 4000.0, "easy", 0.0, 1)]; //4000m minute easy swim
var day144 = [Workout("bike", "not workout", "time", 60.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 90.0, "easy", 0.0, 2)]; //60 minute easy bike and 90 minute easy run
var day145 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy swim
var day146 = [Workout("bike", "not workout", "time", 240.0, "easy", 0.0, 3)]; //240 minute easy bike
var day147 = [
  Workout("swim", "not workout", "time", 30.0, "easy", 0.0, 3),
  Workout("bike", "not workout", "time", 60.0, "easy", 0.0, 3),
  Workout("run", "not workout", "time", 90.0, "easy", 0.0, 3)
]; //30 minute swim and 60 minute easy bike and 90 minute easy run
//done

//week 22 - month 6
var day148 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day149 = [Workout("bike", "not workout", "time", 90.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 60.0, "easy", 0.0, 2)]; //90 minute easy bike and 60 minute easy run
var day150 = [Workout("swim", "not workout", "distance", (4000.0 * 0.9), "easy", 0.0, 1)]; //4000m minute easy swim - 10%
var day151 = [Workout("bike", "not workout", "time", 60.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 90.0, "easy", 0.0, 2)]; //60 minute easy bike and 90 minute easy run
var day152 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy swim
var day153 = [Workout("bike", "not workout", "time", 240.0, "easy", 0.0, 3)]; //240 minute easy bike
var day154 = [
  Workout("swim", "not workout", "time", 30.0, "easy", 0.0, 3),
  Workout("bike", "not workout", "time", 60.0, "easy", 0.0, 3),
  Workout("run", "not workout", "time", 90.0, "easy", 0.0, 3)
]; //30 minute swim and 60 minute easy bike and 90 minute easy run
//done

//week 23 - month 6
var day155 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day156 = [Workout("bike", "not workout", "time", 90.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 60.0, "easy", 0.0, 2)]; //90 minute easy bike and 60 minute easy run
var day157 = [Workout("swim", "not workout", "distance", (4000.0 * 0.8), "easy", 0.0, 1)]; //4000m minute easy swim - 20%
var day158 = [Workout("bike", "not workout", "time", 60.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 90.0, "easy", 0.0, 2)]; //60 minute easy bike and 90 minute easy run
var day159 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 1)]; //60 minute easy swim
var day160 = [Workout("bike", "not workout", "time", 240.0, "easy", 0.0, 3)]; //240 minute easy bike
var day161 = [
  Workout("swim", "not workout", "time", 30.0, "easy", 0.0, 3),
  Workout("bike", "not workout", "time", 60.0, "easy", 0.0, 3),
  Workout("run", "not workout", "time", 90.0, "easy", 0.0, 3)
]; //30 minute swim and 60 minute easy bike and 90 minute easy run
//done

//week 24 - month 6
var day162 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day163 = [Workout("bike", "not workout", "time", 120.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 60.0, "easy", 0.0, 2)]; //120 minute easy bike and 60 minute easy run
var day164 = [Workout("swim", "not workout", "time", 60.0, "easy", 0.0, 2)]; //60 minute easy swim
var day165 = [Workout("bike", "not workout", "time", 45.0, "easy", 0.0, 2), Workout("run", "not workout", "time", 30.0, "easy", 0.0, 2)]; //45 minute easy bike and 30 minute easy run
var day166 = [Workout("rest", "rest", "rest", 0.0, "rest", 0.0, 0)]; //rest
var day167 = [
  Workout("swim", "not workout", "time", 20.0, "easy", 0.0, 3),
  Workout("bike", "not workout", "time", 30.0, "easy", 0.0, 3),
  Workout("run", "not workout", "time", 10.0, "easy", 0.0, 3)
]; //20 minute easy swim, 30 minute easy ride, 10 minute easy run
var day168 = [Workout("race", "race", "race", raceDistance, "race", 0.0, 100)]; //30 minute swim and 60 minute easy bike and 90 minute easy run
//done

List<Week> baseFullIMPlan = [
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
  Week(day134, day135, day136, day137, day138, day139, day140, 20),
  Week(day141, day142, day143, day144, day145, day146, day147, 21),
  Week(day148, day149, day150, day151, day152, day153, day154, 22),
  Week(day155, day156, day157, day158, day159, day160, day161, 23),
  Week(day162, day163, day164, day165, day166, day167, day168, 100),
];
