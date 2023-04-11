import 'package:flutter/material.dart';
import 'package:FitNut/user_input.dart';

class WorkoutButton extends StatefulWidget {
  final String workout;
  WorkoutButton({required this.workout});
  @override
  _WorkoutButtonState createState() => _WorkoutButtonState();
}

class WorkoutProperties {
  // establish all default workout properties for a 5K
  String workoutType = '5K';
  int minLength = 4;
  int maxLength = 12;
  int daysLength = 3;
  String experienceLevelMessage =
      'I could comfortably jog a 5K right now but I wouldn’t be very fast';
}

class _WorkoutButtonState extends State<WorkoutButton> {
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
            WorkoutProperties workoutProperties = WorkoutProperties();
            // change workout properties if it is not a 5k
            if (widget.workout == "Half Marathon") {
              workoutProperties.workoutType = 'Half Marathon';
              workoutProperties.minLength = 8;
              workoutProperties.maxLength = 16;
              workoutProperties.experienceLevelMessage =
                  'I could jog a half marathon right now but I wouldn’t be very fast';
            } else if (widget.workout == "Marathon") {
              workoutProperties.workoutType = 'Marathon';
              workoutProperties.minLength = 12;
              workoutProperties.maxLength = 24;
              workoutProperties.daysLength = 4;
              workoutProperties.experienceLevelMessage =
                  'I could jog a marathon right now but I wouldn’t be very fast';
            }
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => InputPage(
                        workoutProperties: workoutProperties,
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
