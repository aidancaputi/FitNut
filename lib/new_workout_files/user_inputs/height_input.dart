import 'package:flutter/material.dart';
import 'package:FitNut/new_workout_files/user_input.dart';
import 'package:FitNut/new_workout_files/user_inputs/input_widgets/scroll_wheel.dart';

class HeightInput extends StatefulWidget {
  int totalHeight;
  final InputBorderProperties borderProperties;
  final ValueChanged<int> onChanged;
  HeightInput(
      {required this.totalHeight,
      required this.onChanged,
      required this.borderProperties});
  @override
  _HeightInputState createState() => _HeightInputState();
}

class _HeightInputState extends State<HeightInput> {
  int heightFt = 5;
  int heightIn = 6;
  void _onHeightFtValueChange(int value) {
    setState(() {
      heightFt = value;
      widget.totalHeight = heightFt * 12 + heightIn;
      widget.onChanged(widget.totalHeight);
    });
  }

  void _onHeightInValueChange(int value) {
    setState(() {
      heightIn = value;
      widget.totalHeight = heightFt * 12 + heightIn;
      widget.onChanged(widget.totalHeight);
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
              'How tall are you?',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Flexible(
                  child: ScrollingWheelInput(
                minValue: 3,
                maxValue: 7,
                initialValue: 5,
                onChanged: _onHeightFtValueChange,
              )),
              const SizedBox(
                  width: 20.0,
                  height: 100,
                  child: Center(
                    child: Text("ft.", style: TextStyle(fontSize: 18.0)),
                  )),
              Flexible(
                  child: ScrollingWheelInput(
                minValue: 0,
                maxValue: 11,
                initialValue: 9,
                onChanged: _onHeightInValueChange,
              )),
              const SizedBox(
                  width: 20.0,
                  height: 100,
                  child: Center(
                    child: Text("in.", style: TextStyle(fontSize: 18.0)),
                  ))
            ]),
          ])),
      const SizedBox(height: 16.0),
    ]);
  }
}
