import 'package:flutter/material.dart';
import 'package:FitNut/new_workout_files/user_input.dart';

class GenderInput extends StatefulWidget {
  String gender;
  final InputBorderProperties borderProperties;
  final ValueChanged<String> onChanged;
  GenderInput(
      {required this.gender,
      required this.onChanged,
      required this.borderProperties});
  @override
  _GenderInputState createState() => _GenderInputState();
}

class _GenderInputState extends State<GenderInput> {
  List<String> genderlist = <String>[
    'Select',
    'Male',
    'Female',
    'Prefer not to answer'
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
              'What is your gender?',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16.0),
            DropdownButton<String>(
              value: widget.gender,
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
              items: genderlist.map<DropdownMenuItem<String>>((String value) {
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
