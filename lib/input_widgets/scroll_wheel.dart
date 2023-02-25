import 'package:flutter/material.dart';

class ScrollingWheelInput extends StatefulWidget {
  final ValueChanged<int> onChanged;
  final List<int> values;

  ScrollingWheelInput({required this.onChanged, required this.values});

  @override
  _ScrollingWheelInputState createState() => _ScrollingWheelInputState();
}

class _ScrollingWheelInputState extends State<ScrollingWheelInput> {
  int _selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 50,
      child: ListWheelScrollView(
        diameterRatio: 1.0,
        itemExtent: 20.0,
        children: widget.values.map((int value) {
          return InkWell(
            onTap: () {
              setState(() {
                _selectedValue = value;
                widget.onChanged(_selectedValue);
              });
            },
            child: Center(
              child: Text(
                '$value',
                style: const TextStyle(fontSize: 18.0),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
