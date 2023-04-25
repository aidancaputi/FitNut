import 'package:flutter/material.dart';
import 'package:FitNut/new_workout_files/user_input.dart';
import 'input_widgets/scroll_wheel.dart';

class RHRInput extends StatefulWidget {
  int rhr;
  final InputBorderProperties borderProperties;
  final ValueChanged<int> onChanged;
  RHRInput({required this.rhr, required this.onChanged, required this.borderProperties});
  @override
  _RHRInputState createState() => _RHRInputState();
}

class _RHRInputState extends State<RHRInput> {
  void _onRHRValueChange(int RHRValue) {
    setState(() {
      widget.onChanged(RHRValue);
    });
  }

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
          height: widget.borderProperties.borderHeight,
          width: widget.borderProperties.borderWidth,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'What is your resting heart rate?\n',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Flexible(
                  child: ScrollingWheelInput(
                minValue: 40,
                maxValue: 100,
                initialValue: 70,
                onChanged: _onRHRValueChange,
              )),
              const SizedBox(
                  width: 50.0,
                  height: 50,
                  child: Center(
                    child: Text("bpm", style: TextStyle(fontSize: 18.0)),
                  )),
            ]),
          ])),
      const SizedBox(height: 16.0),
    ]);
  }
}
