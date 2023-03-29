import 'package:flutter/material.dart';
import 'user_input.dart';
import 'user_inputs/workout_input.dart';
import 'user_inputs/workout_button.dart';

class SelectWorkout extends StatelessWidget {
  const SelectWorkout({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Input',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SelectWorkoutPage(),
    );
  }
}

class SelectWorkoutPage extends StatefulWidget {
  const SelectWorkoutPage({super.key});

  @override
  State<SelectWorkoutPage> createState() => Select();
}

class Select extends State<SelectWorkoutPage> {
  // gender
  late String workout = 'Select';
  void _onWorkoutChange(String value) {
    setState(() {
      workout = value;
    });
  }

  // intialize border values
  final InputBorderProperties borderProperties = InputBorderProperties();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Select A Workout'),
        ),
        body: ListView(children: <Widget>[
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    // GENDER INPUT
                    WorkoutInput(
                      workout: workout,
                      onChanged: _onWorkoutChange,
                      borderProperties: borderProperties,
                    ),
                    WorkoutButton(
                      workout: workout,
                    ),
                  ]))
        ]));
  }
}
