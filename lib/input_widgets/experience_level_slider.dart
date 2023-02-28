import 'package:flutter/material.dart';

class ExperienceSliderInput extends StatefulWidget {
  double experienceLevel;
  final ValueChanged<double> onChanged;
  ExperienceSliderInput(
      {required this.experienceLevel, required this.onChanged});
  @override
  _ExperienceSliderInputState createState() => _ExperienceSliderInputState();
}

class _ExperienceSliderInputState extends State<ExperienceSliderInput> {
  String experienceLevelMessage =
      'I could comfortably jog a 5K right now but I wouldn’t be very fast';

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      const SizedBox(height: 16.0),
      Text(
        'How much experience do you have?',
        style: Theme.of(context).textTheme.headlineMedium,
        textAlign: TextAlign.center,
      ),
      Slider(
          value: widget.experienceLevel,
          max: 10,
          divisions: 9,
          min: 1,
          label: widget.experienceLevel.round().toString(),
          onChanged: (double value) {
            setState(() {
              widget.onChanged(value);
              switch (value.toInt()) {
                case 1:
                  {
                    experienceLevelMessage =
                        'I couldn’t walk a 5K, even if my life depended on it';
                  }
                  break;
                case 2:
                  {
                    experienceLevelMessage =
                        'I could walk a 5K, but it wouldn’t be easy';
                  }
                  break;
                case 3:
                  {
                    experienceLevelMessage =
                        'I could comfortably walk a 5K and maybe even jog for a few minutes';
                  }
                  break;
                case 4:
                  {
                    experienceLevelMessage =
                        'I could jog a 5K, but I might have to stop to catch my breath a few times';
                  }
                  break;
                case 5:
                  {
                    experienceLevelMessage =
                        'I could comfortably jog a 5K right now but I wouldn’t be very fast';
                  }
                  break;
                case 6:
                  {
                    experienceLevelMessage =
                        'I could run a 5K in under 28 minutes';
                  }
                  break;
                case 7:
                  {
                    experienceLevelMessage =
                        'I could run a 5K in under 25 minutes';
                  }
                  break;
                case 8:
                  {
                    experienceLevelMessage =
                        'I could run a 5K in under 23 minutes';
                  }
                  break;
                case 9:
                  {
                    experienceLevelMessage =
                        'I could run a 5K in under 21 minutes';
                  }
                  break;
                case 10:
                  {
                    experienceLevelMessage =
                        'I could run a 5K in under 18 minutes';
                  }
                  break;
              }
            });
          }),
      Text(
        '${widget.experienceLevel.toInt()}: $experienceLevelMessage',
        style: const TextStyle(fontSize: 20.0),
        textAlign: TextAlign.center,
      ),
      const SizedBox(height: 16.0),
    ]);
  }
}
