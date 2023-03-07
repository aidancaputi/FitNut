// Copyright 2019 Aleksander Woźniak
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';
import 'dart:convert';
import 'calendarOps.dart';

import 'package:table_calendar/table_calendar.dart';

/// Example event class.
class Event {
  final String title;

  const Event(this.title);

  @override
  String toString() => title;
}

/// Example events.
///
/// Using a [LinkedHashMap] is highly recommended if you decide to use a map.

LinkedHashMap<DateTime, List<Event>> getkEvents(fileSourceStr) {
  final kToday = DateTime.now();
  final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
  final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);

  //final fileList = jsonDecode(fileSourceStr);
  //print(fileList);
  print('\n\n\ninside the event class\n\n\n\n\n');
  print(jsonDecode(fileSourceStr));

  //process the json

  final _kEventSource = Map.fromIterable(List.generate(50, (index) => index),
      key: (item) => DateTime.utc(kFirstDay.year, kFirstDay.month, item * 5),
      value: (item) => List.generate(
          item % 4 + 1, (index) => Event('Event $item | ${index + 1}')))
    ..addAll({
      kToday: [
        Event('Today\'s Event 1'),
        Event('Today\'s Event 2'),
      ],
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
final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);
