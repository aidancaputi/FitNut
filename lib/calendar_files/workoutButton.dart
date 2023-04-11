import 'package:flutter/material.dart';

class WorkoutButton extends StatefulWidget {
  final String currWorkout;
  WorkoutButton({
    required this.currWorkout,
  });
  @override
  _WorkoutButtonState createState() => _WorkoutButtonState();
}

class _WorkoutButtonState extends State<WorkoutButton> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      const SizedBox(height: 32.0),
      ElevatedButton(
        onPressed: () {
          print('pressed workout button');
        },
        child: Text(
          'Start Workout',
          style: const TextStyle(fontSize: 30),
        ),
      ),
      const SizedBox(height: 32.0),
    ]);
  }
}
