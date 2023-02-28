import 'package:flutter/material.dart';
import 'calendar.dart';
import 'user_input.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});
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
            Settings(),
          ],
        ),
      )),
    ));
  }
}

class CalendarApp extends StatelessWidget {
  const CalendarApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: CalPage(),
    );
  }
}

class CalPage extends StatefulWidget {
  //State<MyHomePage> createState() => _MyHomePageState();
  @override
  _CalState createState() => _CalState();
}

class _CalState extends State<CalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TableCalendar Example'),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(height: 20.0),
        ElevatedButton(
          child: const Text('Calendar View'),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => TableBasicsExample()),
          ),
        )
      ])),
    );
  }
} 
/* import 'package:flutter/material.dart';
import 'plan_gen.dart';

import 'dart:convert';

void main() {
// Giving command to runApp() to run the app.

/* The purpose of the runApp() function is to attach
the given widget to the screen. */
  runApp(const MyApp());
}

// Widget is used to create UI in flutter framework.

/* StatelessWidget is a widget, which does not maintain
any state of the widget. */

/* MyApp extends StatelessWidget and overrides its
build method. */

List<Week> plan = generatePlan("5K", "female", 6 * 12, 180, 20, 8, 55); //call test func to create the plan

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title of the application
      title: 'Hello World Demo Application',
      // theme of the widget
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      // Inner UI of the application
      home: MyWidget(),
    );
  }
}

/* This class is similar to MyApp instead it
returns Scaffold Widget */
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: plan.length,
          itemBuilder: (BuildContext ctxt, int index) {
            return Text(jsonEncode(plan[index]));
          }),
    );
  }
}
 */