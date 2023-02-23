import 'package:flutter/material.dart';

class ScrollingWheelInput extends StatefulWidget {
  final ValueChanged<int> onChanged;

  ScrollingWheelInput({required this.onChanged});

  @override
  _ScrollingWheelInputState createState() => _ScrollingWheelInputState();
}

class _ScrollingWheelInputState extends State<ScrollingWheelInput> {
  int _selectedValue = 0;

  final List<int> _values = List.generate(10, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: ListWheelScrollView(
        itemExtent: 30.0,
        children: _values.map((int value) {
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
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
