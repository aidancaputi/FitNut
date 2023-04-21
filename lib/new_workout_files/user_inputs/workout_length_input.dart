import 'package:flutter/material.dart';
import 'package:FitNut/new_workout_files/user_input.dart';

class WorkoutLengthInput extends StatefulWidget {
  List<String> workoutLengths;
  String workoutLength;
  final InputBorderProperties borderProperties;
  final ValueChanged<String> onChanged;
  WorkoutLengthInput(
      {required this.workoutLengths,
      required this.workoutLength,
      required this.onChanged,
      required this.borderProperties});
  @override
  _WorkoutLengthInputState createState() => _WorkoutLengthInputState();
}

class _WorkoutLengthInputState extends State<WorkoutLengthInput> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
          padding: widget.borderProperties.borderPadding,
          decoration: BoxDecoration(
            border: Border.all(
              color: widget.borderProperties.borderColor,
              width: widget.borderProperties.borderLineWidth,
            ),
            borderRadius: BorderRadius.circular(1.0),
          ),
          height: widget.borderProperties.borderHeight,
          width: widget.borderProperties.borderWidth,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'What workout length do you want to train for?',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16.0),
            DropdownButton<String>(
              value: widget.workoutLength,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              style: Theme.of(context).textTheme.bodyMedium,
              underline: Container(
                height: 2,
                color: widget.borderProperties.dropDownColor,
              ),
              onChanged: (String? value) {
                setState(() {
                  widget.onChanged(value!);
                });
              },
              items: widget.workoutLengths
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ])),
      const SizedBox(height: 16.0),
    ]);
  }
}
