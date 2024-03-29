import 'package:FitNut/new_workout_files/user_inputs/workout_length_button.dart';
import 'package:flutter/material.dart';
import 'package:FitNut/new_workout_files/user_input.dart';

class DaysInput extends StatefulWidget {
  List<bool> days;
  final InputBorderProperties borderProperties;
  final ValueChanged<List<bool>> onChanged;
  final WorkoutProperties workoutProperties;
  DaysInput(
      {required this.days,
      required this.onChanged,
      required this.borderProperties,
      required this.workoutProperties});
  @override
  _DaysInputState createState() => _DaysInputState();
}

class _DaysInputState extends State<DaysInput> {
  final double checkboxHeight = 40;
  final double checkboxWidth = 200;
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      const SizedBox(height: 16.0),
      Container(
          padding: widget.borderProperties.borderPadding,
          decoration: BoxDecoration(
            border: Border.all(
              color: widget.borderProperties.borderColor,
              width: widget.borderProperties.borderLineWidth,
            ),
            borderRadius: BorderRadius.circular(1.0),
          ),
          height: 490,
          width: 500,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'What days can you workout on? - please select at least ${widget.workoutProperties.daysLength}',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10.0),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: <
                Widget>[
              SizedBox(
                width: checkboxWidth,
                height: checkboxHeight,
                child: CheckboxListTile(
                  title: const Text('Monday', style: TextStyle(fontSize: 18.0)),
                  value: widget.days[0],
                  onChanged: (value) {
                    setState(() {
                      widget.days[0] = value!;
                      widget.onChanged(widget.days);
                    });
                  },
                ),
              ),
              SizedBox(
                width: checkboxWidth,
                height: checkboxHeight,
                child: CheckboxListTile(
                  title:
                      const Text('Tuesday', style: TextStyle(fontSize: 18.0)),
                  value: widget.days[1],
                  onChanged: (value) {
                    setState(() {
                      widget.days[1] = value!;
                      widget.onChanged(widget.days);
                    });
                  },
                ),
              ),
              SizedBox(
                width: checkboxWidth,
                height: checkboxHeight,
                child: CheckboxListTile(
                  title:
                      const Text('Wednesday', style: TextStyle(fontSize: 18.0)),
                  value: widget.days[2],
                  onChanged: (value) {
                    setState(() {
                      widget.days[2] = value!;
                      widget.onChanged(widget.days);
                    });
                  },
                ),
              ),
              SizedBox(
                width: checkboxWidth,
                height: checkboxHeight,
                child: CheckboxListTile(
                  title:
                      const Text('Thursday', style: TextStyle(fontSize: 18.0)),
                  value: widget.days[3],
                  onChanged: (value) {
                    setState(() {
                      widget.days[3] = value!;
                      widget.onChanged(widget.days);
                    });
                  },
                ),
              ),
              SizedBox(
                width: checkboxWidth,
                height: checkboxHeight,
                child: CheckboxListTile(
                  title: const Text('Friday', style: TextStyle(fontSize: 18.0)),
                  value: widget.days[4],
                  onChanged: (value) {
                    setState(() {
                      widget.days[4] = value!;
                      widget.onChanged(widget.days);
                    });
                  },
                ),
              ),
              SizedBox(
                width: checkboxWidth,
                height: checkboxHeight,
                child: CheckboxListTile(
                  title:
                      const Text('Saturday', style: TextStyle(fontSize: 18.0)),
                  value: widget.days[5],
                  onChanged: (value) {
                    setState(() {
                      widget.days[5] = value!;
                      widget.onChanged(widget.days);
                    });
                  },
                ),
              ),
              SizedBox(
                width: checkboxWidth,
                height: checkboxHeight,
                child: CheckboxListTile(
                  title: const Text('Sunday', style: TextStyle(fontSize: 18.0)),
                  value: widget.days[6],
                  onChanged: (value) {
                    setState(() {
                      widget.days[6] = value!;
                      widget.onChanged(widget.days);
                    });
                  },
                ),
              ),
            ]),
          ])),
      const SizedBox(height: 16.0),
    ]);
  }
}
