import 'package:flutter/material.dart';
import 'package:FitNut/user_input.dart';
import 'input_widgets/number_input.dart';

class AgeInput extends StatefulWidget {
  int age;
  final InputBorderProperties borderProperties;
  final ValueChanged<int> onChanged;
  AgeInput(
      {required this.age,
      required this.onChanged,
      required this.borderProperties});
  @override
  _AgeInputState createState() => _AgeInputState();
}

class _AgeInputState extends State<AgeInput> {
  void _onAgeValueChange(int ageValue) {
    setState(() {
      widget.onChanged(ageValue);
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
              'How old are you?',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Flexible(
                child: NumericTextInput(onInputValueChange: _onAgeValueChange),
              ),
              const SizedBox(
                  width: 100.0,
                  height: 50,
                  child: Center(
                    child: Text("years old", style: TextStyle(fontSize: 18.0)),
                  )),
            ]),
          ])),
      const SizedBox(height: 16.0),
    ]);
  }
}
