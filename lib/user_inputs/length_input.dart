import 'package:flutter/material.dart';
import 'package:FitNut/user_input.dart';
import 'package:FitNut/user_inputs/input_widgets/scroll_wheel.dart';

class LengthInput extends StatefulWidget {
  int length;
  final InputBorderProperties borderProperties;
  final ValueChanged<int> onChanged;
  LengthInput({required this.length, required this.onChanged, required this.borderProperties});
  @override
  _LengthInputState createState() => _LengthInputState();
}

class _LengthInputState extends State<LengthInput> {
  void _onLengthValueChange(int value) {
    setState(() {
      widget.length = value;
      widget.onChanged(widget.length);
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
          height: widget.borderProperties.borderHeight + 12,
          width: widget.borderProperties.borderWidth,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'How long do you want your workout plan to be?',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Flexible(
                  child: ScrollingWheelInput(
                minValue: 4,
                maxValue: 12,
                onChanged: _onLengthValueChange,
              )),
              const SizedBox(
                  width: 50.0,
                  height: 100,
                  child: Center(
                    child: Text("weeks", style: TextStyle(fontSize: 18.0)),
                  )),
            ]),
          ])),
      const SizedBox(height: 16.0),
    ]);
  }
}
