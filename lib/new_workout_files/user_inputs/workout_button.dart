import 'package:flutter/material.dart';
import 'package:FitNut/new_workout_files/select_length.dart';

class WorkoutButton extends StatefulWidget {
  final String workout;
  WorkoutButton({required this.workout});
  @override
  _WorkoutButtonState createState() => _WorkoutButtonState();
}

class _WorkoutButtonState extends State<WorkoutButton> {
  List<String> workoutLengths = <String>[
    'Select',
    '5K',
    '10K',
    'Half Marathon',
    'Marathon',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      const SizedBox(height: 32.0),
      ElevatedButton(
        onPressed: () {
          // input verification
          if (widget.workout == "Select") {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Please select a workout type')),
            );
          } else {
            // change workout lengths if it is a triathlon
            if (widget.workout == "Triathlon") {
              workoutLengths = <String>[
                'Select',
                'Sprint',
                'Olympic',
                'Half Ironman',
                'Ironman',
              ];
            }
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SelectWorkoutLength(
                        workoutLengths: workoutLengths,
                        workout: widget.workout,
                      )),
            );
          }
        },
        child: const Text(
          'Next',
          style: TextStyle(fontSize: 40, color: Colors.white),
        ),
      ),
      const SizedBox(height: 32.0),
    ]);
  }
}
