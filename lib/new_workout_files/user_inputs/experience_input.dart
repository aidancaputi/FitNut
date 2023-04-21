import 'package:FitNut/new_workout_files/user_inputs/workout_length_button.dart';
import 'package:flutter/material.dart';
import 'package:FitNut/new_workout_files/user_input.dart';

class ExperienceSliderInput extends StatefulWidget {
  int experienceLevel;
  final InputBorderProperties borderProperties;
  final ValueChanged<double> onChanged;
  WorkoutProperties workoutProperties;
  ExperienceSliderInput(
      {required this.experienceLevel,
      required this.onChanged,
      required this.borderProperties,
      required this.workoutProperties});
  @override
  _ExperienceSliderInputState createState() => _ExperienceSliderInputState();
}

class _ExperienceSliderInputState extends State<ExperienceSliderInput> {
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
              'How much experience do you have?',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            Slider(
                value: widget.experienceLevel.toDouble(),
                max: 10,
                divisions: 9,
                min: 1,
                label: widget.experienceLevel.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    widget.onChanged(value);
                    switch (widget.workoutProperties.workoutLength) {
                      case '5K':
                        {
                          switch (value.toInt()) {
                            case 1:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I couldn’t walk a 5K, even if my life depended on it';
                              }
                              break;
                            case 2:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could walk a 5K, but it wouldn’t be easy';
                              }
                              break;
                            case 3:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could comfortably walk a 5K and maybe even jog for a few minutes';
                              }
                              break;
                            case 4:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could jog a 5K, but I might have to stop to catch my breath a few times';
                              }
                              break;
                            case 5:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could comfortably jog a 5K right now but I wouldn’t be very fast';
                              }
                              break;
                            case 6:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could run a 5K in under 28 minutes';
                              }
                              break;
                            case 7:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could run a 5K in under 25 minutes';
                              }
                              break;
                            case 8:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could run a 5K in under 23 minutes';
                              }
                              break;
                            case 9:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could run a 5K in under 21 minutes';
                              }
                              break;
                            case 10:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could run a 5K in under 18 minutes';
                              }
                              break;
                          }
                        }
                        break;
                      case '10K':
                        {
                          switch (value.toInt()) {
                            case 1:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I couldn’t walk a 10K, even if my life depended on it';
                              }
                              break;
                            case 2:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could walk a 10K, but it wouldn’t be easy';
                              }
                              break;
                            case 3:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could comfortably walk a 10K and maybe even jog for a few minutes';
                              }
                              break;
                            case 4:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could jog a 10K, but I might have to stop to catch my breath a few times';
                              }
                              break;
                            case 5:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could comfortably jog a 10K right now but I wouldn’t be very fast';
                              }
                              break;
                            case 6:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could run a 10K in under an hour';
                              }
                              break;
                            case 7:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could run a 10K in under 55 minutes';
                              }
                              break;
                            case 8:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could run a 10K in under 50 minutes';
                              }
                              break;
                            case 9:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could run a 10K in under 45 minutes';
                              }
                              break;
                            case 10:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could run a 10K in under 35 minutes';
                              }
                              break;
                          }
                        }
                        break;
                      case 'Half Marathon':
                        switch (value.toInt()) {
                          case 1:
                            {
                              widget.workoutProperties.experienceLevelMessage =
                                  'I couldn’t walk a half marathon, even if my life depended on it';
                            }
                            break;
                          case 2:
                            {
                              widget.workoutProperties.experienceLevelMessage =
                                  'I could walk a half marathon, but it wouldn’t be easy';
                            }
                            break;
                          case 3:
                            {
                              widget.workoutProperties.experienceLevelMessage =
                                  'I could walk a half marathon and maybe even jog for a few minutes';
                            }
                            break;
                          case 4:
                            {
                              widget.workoutProperties.experienceLevelMessage =
                                  'I could jog a half marathon, but I might have to stop to catch my breath a few times';
                            }
                            break;
                          case 5:
                            {
                              widget.workoutProperties.experienceLevelMessage =
                                  'I could jog a half marathon right now but I wouldn’t be very fast';
                            }
                            break;
                          case 6:
                            {
                              widget.workoutProperties.experienceLevelMessage =
                                  'I could run a half marathon in under 2 hours and 30 minutes';
                            }
                            break;
                          case 7:
                            {
                              widget.workoutProperties.experienceLevelMessage =
                                  'I could run a half marathon in under 2 hours and 15 minutes';
                            }
                            break;
                          case 8:
                            {
                              widget.workoutProperties.experienceLevelMessage =
                                  'I could run a half marathon in under 2 hours';
                            }
                            break;
                          case 9:
                            {
                              widget.workoutProperties.experienceLevelMessage =
                                  'I could run a half marathon in under 1 hour and 45 minutes';
                            }
                            break;
                          case 10:
                            {
                              widget.workoutProperties.experienceLevelMessage =
                                  'I could run a half marathon in under 1 hour and 30 minutes';
                            }
                            break;
                        }
                        break;
                      case 'Marathon':
                        {
                          switch (value.toInt()) {
                            case 1:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I couldn’t walk a marathon, even if my life depended on it';
                              }
                              break;
                            case 2:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could walk a marathon, but it wouldn’t be easy';
                              }
                              break;
                            case 3:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could walk a marathon and maybe even jog for a few minutes';
                              }
                              break;
                            case 4:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could jog a marathon, but I might have to stop to catch my breath a few times';
                              }
                              break;
                            case 5:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could jog a marathon right now but I wouldn’t be very fast';
                              }
                              break;
                            case 6:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could run a marathon in under 5 hours';
                              }
                              break;
                            case 7:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could run a marathon in under 4 hours and 30 minutes';
                              }
                              break;
                            case 8:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could run a marathon in under 4 hours';
                              }
                              break;
                            case 9:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could run a marathon in under 3 hours and 30 minutes';
                              }
                              break;
                            case 10:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could run a marathon in under 3 hours';
                              }
                              break;
                          }
                        }
                        break;
                      case 'Sprint':
                        {
                          switch (value.toInt()) {
                            case 1:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I couldn’t complete a sprint triathlon, even if my life depended on it';
                              }
                              break;
                            case 2:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish a sprint triathlon, but it wouldn’t be easy';
                              }
                              break;
                            case 3:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish a sprint triathlon and maybe even push myself for a few minutes';
                              }
                              break;
                            case 4:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish a sprint triathlon and push myself for most of it, but I’d have to stop and rest a few times';
                              }
                              break;
                            case 5:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish a sprint triathlon and push myself the entire time, but I wouldn’t be very fast';
                              }
                              break;
                            case 6:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish a sprint triathlon in under 2 hours and 30 minutes';
                              }
                              break;
                            case 7:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish a sprint triathlon in under 2 hours';
                              }
                              break;
                            case 8:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish a sprint triathlon in under 1 hour and 30 minutes';
                              }
                              break;
                            case 9:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish a sprint triathlon in under 1 hour';
                              }
                              break;
                            case 10:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish a sprint triathlon in under 45 minutes';
                              }
                              break;
                          }
                        }
                        break;
                      case 'Olympic':
                        {
                          switch (value.toInt()) {
                            case 1:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I couldn’t complete an olympic triathlon, even if my life depended on it';
                              }
                              break;
                            case 2:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish an olympic triathlon, but it wouldn’t be easy';
                              }
                              break;
                            case 3:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish an olympic triathlon and maybe even push myself for a few minutes';
                              }
                              break;
                            case 4:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish an olympic triathlon and push myself for most of it, but I’d have to stop and rest a few times';
                              }
                              break;
                            case 5:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish an olympic triathlon and push myself the entire time, but I wouldn’t be very fast';
                              }
                              break;
                            case 6:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish an olympic triathlon in under 4 hours and 15 minutes';
                              }
                              break;
                            case 7:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish an olympic triathlon in under 3 hours and 30 minutes';
                              }
                              break;
                            case 8:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish an olympic triathlon in under 3 hours';
                              }
                              break;
                            case 9:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish an olympic triathlon in under 2 hours and 30 minutes';
                              }
                              break;
                            case 10:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish an olympic triathlon in under 2 hours and 15 minutes';
                              }
                              break;
                          }
                        }
                        break;
                      case 'Half Ironman':
                        {
                          switch (value.toInt()) {
                            case 1:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I couldn’t complete a half ironman, even if my life depended on it';
                              }
                              break;
                            case 2:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish a half ironman, but it wouldn’t be easy';
                              }
                              break;
                            case 3:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish a half ironman and maybe even push myself for a few minutes';
                              }
                              break;
                            case 4:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish a half ironman and push myself for most of it, but I’d have to stop and rest a few times';
                              }
                              break;
                            case 5:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish a half ironman and push myself the entire time, but I wouldn’t be very fast';
                              }
                              break;
                            case 6:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish a half ironman in under 8 hours';
                              }
                              break;
                            case 7:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish a half ironman in under 7 hours';
                              }
                              break;
                            case 8:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish a half ironman in under 6 hour and 30 minutes';
                              }
                              break;
                            case 9:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish a half ironman in under 5 hours and 30 minutes';
                              }
                              break;
                            case 10:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish a half ironman in under 5 hours';
                              }
                              break;
                          }
                        }
                        break;
                      case 'Ironman':
                        {
                          switch (value.toInt()) {
                            case 1:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I couldn’t complete a full ironman, even if my life depended on it';
                              }
                              break;
                            case 2:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish a full ironman, but it wouldn’t be easy';
                              }
                              break;
                            case 3:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish a full ironman and maybe even push myself for a few minutes';
                              }
                              break;
                            case 4:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish a full ironman and push myself for most of it, but I’d have to stop and rest a few times';
                              }
                              break;
                            case 5:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish a full ironman and push myself the entire time, but I wouldn’t be very fast';
                              }
                              break;
                            case 6:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish a full ironman in under 17 hours';
                              }
                              break;
                            case 7:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish a full ironman in under 15 hours';
                              }
                              break;
                            case 8:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish a full ironman in under 13 hours';
                              }
                              break;
                            case 9:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish a full ironman in under 11 hours';
                              }
                              break;
                            case 10:
                              {
                                widget.workoutProperties
                                        .experienceLevelMessage =
                                    'I could finish a full ironman in under 10 hours';
                              }
                              break;
                          }
                        }
                        break;
                    }
                  });
                }),
            Text(
              '${widget.experienceLevel.toInt()}: ${widget.workoutProperties.experienceLevelMessage}',
              style: const TextStyle(fontSize: 18.0),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16.0),
          ]))
    ]);
  }
}
