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

List<Event> prettifyWorkout(String dayWorkout) {
  late List<String> listWorkout;

  if (dayWorkout.contains('},{')) {
    listWorkout = dayWorkout.split('},{');
    for (var l = 0; l < listWorkout.length; l++) {
      if (l != 0) {
        listWorkout[l] = '{${listWorkout[l]}';
      }
      if (l != listWorkout.length - 1) {
        listWorkout[l] = '${listWorkout[l]}}';
      }
    }
  } else {
    listWorkout = [dayWorkout];
  }

  List<String> strArray = [];

  for (var i = 0; i < listWorkout.length; i++) {
    List<String> str =
        listWorkout[i].replaceAll("{", "").replaceAll("}", "").split(",");
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
      finalStr += 'Run Day:';
      if (wkt[1] == 'not workout') {
        if (wkt[2] == 'time') {
          finalStr +=
              '\n- Run for ${double.parse(wkt[3]).toInt()} minutes at ${wkt[4]} pace';
        } else if (wkt[2] == 'distance') {
          finalStr +=
              '\n- Run for ${double.parse(wkt[3]).toInt()} miles at ${wkt[4]} pace';
        }
      } else if (wkt[1] == 'workout') {
        if (wkt[2] == 'time') {
          finalStr +=
              '\n- Run ${double.parse(wkt[5]).toInt()} reps of ${double.parse(wkt[3]).toInt()} seconds (hard pace)';
        } else if (wkt[2] == 'distance') {
          finalStr +=
              '\n- Run ${double.parse(wkt[5]).toInt()} reps of ${double.parse(wkt[3]).toInt()} meters (hard pace)';
        }
      }
    } else if (wkt[0] == 'bike') {
      finalStr += 'Bike Day:';

      if (wkt[1] == 'not workout') {
        if (wkt[2] == 'time') {
          finalStr +=
              '\n- Bike for ${double.parse(wkt[3]).toInt()} minutes at ${wkt[4]} pace';
        } else if (wkt[2] == 'distance') {
          finalStr +=
              '\n- Bike for ${double.parse(wkt[3]).toInt()} miles at ${wkt[4]} pace';
        }
      } else if (wkt[1] == 'workout') {
        if (wkt[2] == 'time') {
          finalStr +=
              '\n- Bike ${double.parse(wkt[5]).toInt()} sets of ${(double.parse(wkt[3]) ~/ 60.0)} minutes (hard pace)';
        }
      }
    } else if (wkt[0] == 'swim') {
      finalStr += 'Swim Day:';
      if (wkt[1] == 'not workout') {
        if (wkt[2] == 'time') {
          finalStr +=
              '\n- Swim for ${double.parse(wkt[3]).toInt()} minutes at ${wkt[4]} pace';
        } else if (wkt[2] == 'distance') {
          finalStr +=
              '\n- Swim for ${double.parse(wkt[3]).toInt()} meters at ${wkt[4]} pace';
        }
      } else if (wkt[1] == 'workout') {
        if (wkt[2] == 'distance') {
          finalStr +=
              '\n- Swim ${double.parse(wkt[5]).toInt()} reps of ${double.parse(wkt[3]).toInt()} meters (hard pace)';
        }
      }
    } else if (wkt[0] == 'rest') {
      finalStr += 'Rest Day!';
    } else if (wkt[0] == 'cross') {
      finalStr +=
          'Cross Day - find a different way to exercise, like weightlifting or sports!';
    } else if (wkt[0] == 'race') {
      finalStr += 'Race Day\nYou got this!\nYour hard work WILL pay off!';
    }

    strArray.add(finalStr);
  }

  List<Event> eventArray =
      List.generate(strArray.length, (index) => Event(strArray[index]));

  return eventArray;
}

// events
///
/// Using a [LinkedHashMap] is highly recommended if you decide to use a map.

LinkedHashMap<DateTime, List<Event>> getkEvents(fileSourceStr) {
  //print('\n\n\ninside the event class\n\n\n\n\n');
  //print(fileSourceStr);
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

  final Map<DateTime, List<Event>> _kEventSource = Map.fromIterable(
      List.generate(numWeeks * 7, (index) => index),
      key: (item) => DateTime.utc(
          kFirstDay.year, kFirstDay.month, (kFirstDay.day + item).toInt()),
      value: (item) => prettifyWorkout(dayArr[item]))
    ..addAll({
      kToday: prettifyWorkout(dayArr[0]),
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
