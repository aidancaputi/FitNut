import 'package:flutter/material.dart';
import 'calendar_files/calendar.dart';
import 'user_input.dart';
import 'calendar_files/calendarOps.dart';
import 'select_workout.dart';


void main() {
  runApp(const TabBarField());
}

class TabBarField extends StatelessWidget {
  const TabBarField({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 4,
      child: Scaffold(
          body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            const SliverAppBar(
              title: Text('FitNut'),
              pinned: true,
              floating: true,
              bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.calendar_today)),
                  Tab(icon: Icon(Icons.card_membership_sharp)),
                  Tab(icon: Icon(Icons.waves_rounded)),
                  Tab(icon: Icon(Icons.settings_sharp)),
                ],
              ),
            ),
          ];
        },
        body: const TabBarView(
          children: <Widget>[
            CalendarApp(),
            Icon(Icons.flight, size: 437.5),
            Icon(Icons.directions_car, size: 350),
            SelectWorkout(),
          ],
        ),
      )),
    ));
  }
}
