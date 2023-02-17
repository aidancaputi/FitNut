import 'package:flutter/material.dart';
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

List<Week> plan = testFunc(); //call test func to create the plan

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
