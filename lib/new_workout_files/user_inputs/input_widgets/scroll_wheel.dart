import 'package:flutter/cupertino.dart';

class ScrollingWheelInput extends StatefulWidget {
  final int minValue;
  final int maxValue;
  final int initialValue;
  final ValueChanged<int> onChanged;

  const ScrollingWheelInput({
    Key? key,
    required this.minValue,
    required this.maxValue,
    required this.initialValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  _ScrollingWheelInputState createState() => _ScrollingWheelInputState();
}

class _ScrollingWheelInputState extends State<ScrollingWheelInput> {
  late FixedExtentScrollController _scrollController;
  late int _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.initialValue;
    _scrollController = FixedExtentScrollController(
        initialItem: _selectedValue - widget.minValue);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 50,
      child: CupertinoPicker(
        scrollController: _scrollController,
        itemExtent: 32,
        onSelectedItemChanged: (index) {
          setState(() {
            _selectedValue = widget.minValue + index;
          });
          widget.onChanged(_selectedValue);
        },
        children: List.generate(
          widget.maxValue - widget.minValue + 1,
          (index) => Text(
            '${widget.minValue + index}',
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
