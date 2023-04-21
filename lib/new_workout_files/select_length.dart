import 'package:flutter/material.dart';
import 'user_input.dart';
import 'user_inputs/workout_length_input.dart';
import 'user_inputs/workout_length_button.dart';

class SelectWorkoutLength extends StatefulWidget {
  List<String> workoutLengths;
  String workout;
  SelectWorkoutLength(
      {super.key, required this.workoutLengths, required this.workout});
  @override
  State<SelectWorkoutLength> createState() => SelectWorkoutLengthPage();
}

class SelectWorkoutLengthPage extends State<SelectWorkoutLength> {
  late String workoutLength = 'Select';
  void _onWorkoutChange(String value) {
    setState(() {
      workoutLength = value;
    });
  }

  // intialize border values
  final InputBorderProperties borderProperties = InputBorderProperties();

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
        data: MediaQuery.of(context),
        child: Scaffold(
            appBar: AppBar(
              iconTheme: const IconThemeData(color: Colors.white),
              title: Text('Select a ${widget.workout} Workout Length',
                  style: const TextStyle(color: Colors.white)),
            ),
            body: ListView(children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      const SizedBox(height: 32.0),
                      // GENDER INPUT
                      WorkoutLengthInput(
                        workoutLengths: widget.workoutLengths,
                        workoutLength: workoutLength,
                        onChanged: _onWorkoutChange,
                        borderProperties: borderProperties,
                      ),
                      WorkoutLengthButton(
                        workoutLength: workoutLength,
                        workoutType: widget.workout,
                      ),
                    ],
                  ))
            ])));
  }
}
