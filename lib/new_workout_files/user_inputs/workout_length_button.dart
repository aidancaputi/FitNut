import 'package:flutter/material.dart';
import 'package:FitNut/new_workout_files/user_input.dart';

class WorkoutLengthButton extends StatefulWidget {
  final String workoutLength;
  final String workoutType;
  WorkoutLengthButton({required this.workoutLength, required this.workoutType});
  @override
  _WorkoutLengthButtonState createState() => _WorkoutLengthButtonState();
}

class WorkoutProperties {
  // establish all default workout properties for a 5K
  String workoutType = 'Run';
  String workoutLength = '5K';
  int minLength = 4;
  int maxLength = 12;
  int daysLength = 3;
  String experienceLevelMessage =
      'I could comfortably jog a 5K right now but I wouldn’t be very fast';
}

class _WorkoutLengthButtonState extends State<WorkoutLengthButton> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      const SizedBox(height: 32.0),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
        onPressed: () {
          // input verification
          if (widget.workoutLength == "Select") {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Please select a workout type')),
            );
          } else {
            WorkoutProperties workoutProperties = WorkoutProperties();
            workoutProperties.workoutType = widget.workoutType;
            // change workout properties if it is not a 5k
            switch (widget.workoutLength) {
              case "10K":
                {
                  workoutProperties.workoutLength = '10K';
                  workoutProperties.minLength = 4;
                  workoutProperties.maxLength = 12;
                  workoutProperties.daysLength = 3;
                  workoutProperties.experienceLevelMessage =
                      'I could comfortably jog a half marathon right now but I wouldn’t be very fast';
                }
                break;
              case "Half Marathon":
                {
                  workoutProperties.workoutLength = 'Half Marathon';
                  workoutProperties.minLength = 8;
                  workoutProperties.maxLength = 16;
                  workoutProperties.experienceLevelMessage =
                      'I could comfortably jog a half marathon right now but I wouldn’t be very fast';
                }
                break;
              case "Marathon":
                {
                  workoutProperties.workoutLength = 'Marathon';
                  workoutProperties.minLength = 12;
                  workoutProperties.maxLength = 24;
                  workoutProperties.daysLength = 4;
                  workoutProperties.experienceLevelMessage =
                      'I could comfortably jog a marathon right now but I wouldn’t be very fast';
                }
                break;
              case "Sprint":
                {
                  workoutProperties.workoutLength = 'Sprint';
                  workoutProperties.minLength = 4;
                  workoutProperties.maxLength = 12;
                  workoutProperties.daysLength = 3;
                  workoutProperties.experienceLevelMessage =
                      'I could finish a sprint triathlon and push myself the entire time, but I wouldn’t be very fast';
                }
                break;
              case "Olympic":
                {
                  workoutProperties.workoutLength = 'Olympic';
                  workoutProperties.minLength = 12;
                  workoutProperties.maxLength = 20;
                  workoutProperties.daysLength = 3;
                  workoutProperties.experienceLevelMessage =
                      'I could finish an olympic triathlon and push myself the entire time, but I wouldn’t be very fast';
                }
                break;
              case "Half Ironman":
                {
                  workoutProperties.workoutLength = 'Half Ironman';
                  workoutProperties.minLength = 16;
                  workoutProperties.maxLength = 24;
                  workoutProperties.daysLength = 4;
                  workoutProperties.experienceLevelMessage =
                      'I could finish a half ironman and push myself the entire time, but I wouldn’t make the time cutoff';
                }
                break;
              case "Ironman":
                {
                  workoutProperties.workoutLength = 'Ironman';
                  workoutProperties.minLength = 20;
                  workoutProperties.maxLength = 28;
                  workoutProperties.daysLength = 4;
                  workoutProperties.experienceLevelMessage =
                      'I could finish a full ironman and push myself the entire time, but I wouldn’t make the time cutoff';
                }
                break;
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
          style: TextStyle(
              fontSize: 40, color: Colors.white, fontWeight: FontWeight.w400),
        ),
      ),
      const SizedBox(height: 32.0),
    ]);
  }
}
