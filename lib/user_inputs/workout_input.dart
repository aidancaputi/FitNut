import 'package:flutter/material.dart';
import 'package:FitNut/user_input.dart';

class WorkoutInput extends StatefulWidget {
  String workout;
  final InputBorderProperties borderProperties;
  final ValueChanged<String> onChanged;
  WorkoutInput(
      {required this.workout,
      required this.onChanged,
      required this.borderProperties});
  @override
  _WorkoutInputState createState() => _WorkoutInputState();
}

class _WorkoutInputState extends State<WorkoutInput> {
  List<String> workoutlist = <String>[
    'Select',
    '5K',
    'Half Marathon',
    'Marathon',
  ];

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
              'Select a workout to create',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16.0),
            DropdownButton<String>(
              value: widget.workout,
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
              items: workoutlist.map<DropdownMenuItem<String>>((String value) {
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
