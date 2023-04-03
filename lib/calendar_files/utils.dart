// Copyright 2019 Aleksander Woźniak
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';
import 'dart:convert';
import 'calendarOps.dart';

import 'package:table_calendar/table_calendar.dart';

// event class.
class Event {
  final String title;

  const Event(this.title);

  @override
  String toString() => title;
}

List removeQuotes(List raw) {
  for (int i = 0; i < raw.length; i++) {
    if (raw[i] is String && raw[i].contains('\"')) {
      raw[i] = (raw[i].split('"'))[1];
    }
  }

  return raw;
}

String prettifyWorkout(String dayWorkout) {
  List<String> str =
      dayWorkout.replaceAll("{", "").replaceAll("}", "").split(",");
  Map<String, dynamic> result = {};
  for (int i = 0; i < str.length; i++) {
    List<String> s = str[i].split(":");
    result.putIfAbsent(s[0].trim(), () => s[1].trim());
  }

  // day is an array containing a field with info for each workout
  List wkt = [];

  result.forEach((key, value) {
    wkt.add(value);
  });

  String finalStr = '';
  wkt = removeQuotes(wkt);

  if (wkt[0] == 'run') {
    finalStr += 'Run Day:\n';

    if (wkt[1] == 'time') {
      finalStr += wkt[2].toString() + ' minutes';
    } else if (wkt[1] == 'distance') {
      finalStr += wkt[2].toString() + ' miles';
    }

    if (wkt[3] == 'race') {
      finalStr = 'Race Day - go out and do it';
    } else {
      finalStr += ' at ' + wkt[3].toString() + ' pace';
    }
  } else if (wkt[0] == 'workout') {
    finalStr += 'Workout Day:\n';

    if (wkt[1] == 'time') {
      finalStr += wkt[2].toString() + ' seconds';
    } else if (wkt[1] == 'distance') {
      finalStr += wkt[2].toString() + ' meters';
    }

    finalStr += ' for ' + wkt[4].toString() + ' reps';
  } else if (wkt[0] == 'rest') {
    finalStr = 'Rest Day!';
  } else if (wkt[0] == 'cross') {
    finalStr = 'Cross Day:\nTry a workout besides \nrunning for today';
  } else if (wkt[0] == 'race') {
    finalStr = 'Race Day - your training WILL pay off!';
  } else {
    finalStr = 'workout not read properly- ' + wkt.toString();
  }

  return finalStr;
}

// events
///
/// Using a [LinkedHashMap] is highly recommended if you decide to use a map.

LinkedHashMap<DateTime, List<Event>> getkEvents(fileSourceStr) {
  //print('\n\n\ninside the event class\n\n\n\n\n');

  //decode the json from the plan file
  List<dynamic> fileSourceList = jsonDecode(fileSourceStr);

  //find the number of weeks the plan lasts
  int numWeeks = fileSourceList.length;
  List dayArr = [];

  //declare a week json to iterate the file json
  Map<String, dynamic> week;

  for (week in fileSourceList) {
    week.forEach((key, value) {
      //append each day of the workout plan to an array of subsequent days
      dayArr.add(value);
      //print('$key : $value');
    });
  }

  // create a map, setting each day from today onwards to correspond to the array
  // of days, so that any utc date in the workout plan range points to the appropriate
  // workout for that day
  // today has to be set seperately

  final _kEventSource = Map.fromIterable(
      List.generate(numWeeks * 7, (index) => index),
      key: (item) => DateTime.utc(
          kFirstDay.year, kFirstDay.month, (kFirstDay.day + item).toInt()),
      value: (item) =>
          List.generate(1, (index) => Event(prettifyWorkout(dayArr[item]))))
    ..addAll({
      kToday: [Event(dayArr[0])],
    });

  final kEvents = LinkedHashMap<DateTime, List<Event>>(
    equals: isSameDay,
    hashCode: getHashCode,
  )..addAll(_kEventSource);

  return kEvents;
}

int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}

/// Returns a list of [DateTime] objects from [first] to [last], inclusive.
List<DateTime> daysInRange(DateTime first, DateTime last) {
  final dayCount = last.difference(first).inDays + 1;
  return List.generate(
    dayCount,
    (index) => DateTime.utc(first.year, first.month, first.day + index),
  );
}

final kToday = DateTime.now();
final offsetDay = extractOffsetDay();

final kFirstDay = DateTime(kToday.year, kToday.month, kToday.day + offsetDay);

// assuming that the longest workout plan is 6 months
int longestPlanMonths = 8;

final kLastDay =
    DateTime(kToday.year, kToday.month + longestPlanMonths, kToday.day);

int extractOffsetDay() {
  var dayofWeek = kToday.weekday;

  if (dayofWeek == 0) {
    dayofWeek = 7;
  }

  final offset = 8 - kToday.weekday;

  return offset;
}
