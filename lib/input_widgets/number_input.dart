import 'package:flutter/material.dart';

class NumericTextInput extends StatefulWidget {
  final ValueChanged<int> onInputValueChange;
  NumericTextInput({required this.onInputValueChange});
  @override
  _NumericTextInputState createState() => _NumericTextInputState();
}

class _NumericTextInputState extends State<NumericTextInput> {
  final TextEditingController _controller = TextEditingController();
  int _inputValue = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 125,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _controller,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: 'Enter a number',
            ),
            onChanged: (value) {
              setState(() {
                _inputValue = int.tryParse(value) ?? 0;
                widget.onInputValueChange(_inputValue);
              });
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
