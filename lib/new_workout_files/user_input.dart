import 'package:flutter/material.dart';
import 'user_inputs/experience_input.dart';
import 'user_inputs/gender_input.dart';
import 'user_inputs/height_input.dart';
import 'user_inputs/weight_input.dart';
import 'user_inputs/age_input.dart';
import 'user_inputs/rhr_input.dart';
import 'user_inputs/days_input.dart';
import 'user_inputs/length_input.dart';
import 'user_inputs/generate_button.dart';
import 'user_inputs/workout_length_button.dart';

class InputPage extends StatefulWidget {
  WorkoutProperties workoutProperties;
  InputPage({super.key, required this.workoutProperties});
  @override
  State<InputPage> createState() => UserInput();
}

class InputBorderProperties {
  // establish all border properties
  final Color borderColor = Colors.grey.withOpacity(0.75);
  final Color dropDownColor = Colors.orange;
  final double borderLineWidth = 2.0;
  final double borderHeight = 250;
  final double borderWidth = 500;
  final EdgeInsets borderPadding = const EdgeInsets.all(11.0);
}

class UserInput extends State<InputPage> {
  // initialize default values for all inputs
  // gender
  late String gender = 'Select';
  void _onGenderChange(String value) {
    setState(() {
      gender = value;
    });
  }

  // height
  int totalHeight = 36;
  void _onTotalHeightValueChange(int value) {
    setState(() {
      totalHeight = value;
    });
  }

  // weight
  int weightLbs = 0;
  void _onWeightValueChange(int weightValue) {
    setState(() {
      weightLbs = weightValue;
    });
  }

  // age
  int age = 0;
  void _onAgeValueChange(int ageValue) {
    setState(() {
      age = ageValue;
    });
  }

  // experience level
  int experienceLevel = 5; // slider from 0-10
  void _onELMValueChange(double value) {
    setState(() {
      experienceLevel = value.toInt();
    });
  }

  // resting heart rate
  int rhr = 0;
  void _onrhrValueChange(int rhrValue) {
    setState(() {
      rhr = rhrValue;
    });
  }

  // workout plan length
  int workoutLength = 8;
  void _onLengthValueChange(int lengthValue) {
    setState(() {
      workoutLength = lengthValue;
    });
  }

  // days of the week
  List<bool> days = [false, false, false, false, false, false, false];
  int totalDays = 0;
  void _onDaysValueChange(List<bool> daysValues) {
    setState(() {
      days = daysValues;
      totalDays = 0;
      for (int i = 0; i < 7; i++) {
        if (days[i]) {
          totalDays += 1;
        }
      }
    });
  }

  // intialize border values
  final InputBorderProperties borderProperties = InputBorderProperties();

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
        data: MediaQuery.of(context),
        child: Scaffold(
            appBar: AppBar(
              iconTheme: const IconThemeData(color: Colors.white),
              title: const Text('Input Personal Info',
                  style: TextStyle(color: Colors.white)),
            ),
            body: ListView(children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      const SizedBox(height: 16.0),
                      Text(
                        'We need a little more information to customize your workout plan to you specifically:',
                        style: Theme.of(context).textTheme.headlineMedium,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 32.0),
                      // GENDER INPUT
                      GenderInput(
                        gender: gender,
                        onChanged: _onGenderChange,
                        borderProperties: borderProperties,
                      ),

                      // HEIGHT INPUT
                      HeightInput(
                        totalHeight: totalHeight,
                        onChanged: _onTotalHeightValueChange,
                        borderProperties: borderProperties,
                      ),

                      // WEIGHT INPUT
                      WeightInput(
                        weight: weightLbs,
                        onChanged: _onWeightValueChange,
                        borderProperties: borderProperties,
                      ),

                      // AGE INPUT
                      AgeInput(
                        age: age,
                        onChanged: _onAgeValueChange,
                        borderProperties: borderProperties,
                      ),

                      // EXPERIENCE LEVEL
                      ExperienceSliderInput(
                        experienceLevel: experienceLevel,
                        onChanged: _onELMValueChange,
                        borderProperties: borderProperties,
                        workoutProperties: widget.workoutProperties,
                      ),

                      // RHR INPUT
                      RHRInput(
                        rhr: rhr,
                        onChanged: _onrhrValueChange,
                        borderProperties: borderProperties,
                      ),

                      // LENGTH INPUT
                      LengthInput(
                        length: workoutLength,
                        onChanged: _onLengthValueChange,
                        borderProperties: borderProperties,
                        workoutProperties: widget.workoutProperties,
                      ),

                      // DAYS INPUT
                      DaysInput(
                        days: days,
                        onChanged: _onDaysValueChange,
                        borderProperties: borderProperties,
                        workoutProperties: widget.workoutProperties,
                      ),

                      // GO TO NEXT PAGE
                      GenerateButton(
                        gender: gender,
                        totalHeight: totalHeight,
                        weightLbs: weightLbs,
                        age: age,
                        experienceLevel: experienceLevel,
                        rhr: rhr,
                        workoutLength: workoutLength,
                        days: days,
                        totalDays: totalDays,
                        workoutProperties: widget.workoutProperties,
                      ),
                    ],
                  ))
            ])));
  }
}
