import 'package:FitNut/user_inputs/workout_button.dart';
import 'package:flutter/material.dart';
import 'package:FitNut/plan_gen.dart';
import 'package:FitNut/user_inputs/plan_loading.dart';

class GenerateButton extends StatefulWidget {
  final String gender;
  final int totalHeight;
  final int weightLbs;
  final int age;
  final int experienceLevel;
  final int rhr;
  final int workoutLength;
  final List<bool> days;
  final int totalDays;
  final WorkoutProperties workoutProperties;
  GenerateButton(
      {required this.gender,
      required this.totalHeight,
      required this.weightLbs,
      required this.age,
      required this.experienceLevel,
      required this.rhr,
      required this.workoutLength,
      required this.days,
      required this.totalDays,
      required this.workoutProperties});
  @override
  _GenerateButtonState createState() => _GenerateButtonState();
}

class _GenerateButtonState extends State<GenerateButton> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      const SizedBox(height: 32.0),
      ElevatedButton(
        onPressed: () {
          List<Week> newPlan;
          // input verification
          if (widget.gender == "Select") {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Please select a gender')),
            );
          } else if (widget.weightLbs == 0) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Please enter your weight')),
            );
          } else if (widget.age == 0) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Please enter your age')),
            );
          } else if (widget.rhr == 0) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                  content: Text('Please enter your resting heart rate')),
            );
          } else if (widget.totalDays < widget.workoutProperties.daysLength) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content: Text(
                      'Please select at least ${widget.workoutProperties.daysLength} days to workout on')),
            );
          } else {
            newPlan = generatePlan(
                widget.workoutProperties.workoutType,
                widget.gender,
                widget.totalHeight,
                widget.weightLbs,
                widget.age,
                widget.experienceLevel,
                widget.rhr,
                widget.days,
                widget.workoutLength);
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => loadPlan(newPlan: newPlan)),
            );
          }
        },
        child: Text(
          'Generate ${widget.workoutProperties.workoutType} Workout',
          style: const TextStyle(fontSize: 30),
        ),
      ),
      const SizedBox(height: 32.0),
    ]);
  }
}
