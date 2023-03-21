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

class Input extends StatelessWidget {
  final String workoutType;
  const Input({super.key, required this.workoutType});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Input',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InputPage(title: 'Input User Info', workoutType: workoutType),
    );
  }
}

class InputPage extends StatefulWidget {
  final String title;
  final String workoutType;
  const InputPage({super.key, required this.title, required this.workoutType});
  @override
  State<InputPage> createState() => UserInput();
}

class InputBorderProperties {
  // establish all border properties
  final Color borderColor = Colors.grey.withOpacity(0.75);
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
  int totalHeight = 0;
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
    return Scaffold(
      body: ListView(children: <Widget>[
        Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
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
                ),

                // DAYS INPUT
                DaysInput(
                  days: days,
                  onChanged: _onDaysValueChange,
                  borderProperties: borderProperties,
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
                  workoutType: widget.workoutType,
                ),
              ],
            ))
      ]),
    );
  }
}
