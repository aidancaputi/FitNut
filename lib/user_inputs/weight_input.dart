import 'package:flutter/material.dart';
import 'package:FitNut/user_input.dart';
import 'input_widgets/number_input.dart';

class WeightInput extends StatefulWidget {
  int weight;
  final InputBorderProperties borderProperties;
  final ValueChanged<int> onChanged;
  WeightInput(
      {required this.weight,
      required this.onChanged,
      required this.borderProperties});
  @override
  _WeightInputState createState() => _WeightInputState();
}

class _WeightInputState extends State<WeightInput> {
  void _onWeightValueChange(int weightValue) {
    setState(() {
      widget.onChanged(weightValue);
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
              'How much do you weigh?',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Flexible(
                child:
                    NumericTextInput(onInputValueChange: _onWeightValueChange),
              ),
              const SizedBox(
                  width: 50.0,
                  height: 50,
                  child: Center(
                    child: Text("lbs.", style: TextStyle(fontSize: 18.0)),
                  )),
            ]),
          ])),
      const SizedBox(height: 16.0),
    ]);
  }
}
