import 'package:flutter/material.dart';
import 'input_widgets/scroll_wheel.dart';
import 'input_widgets/number_input.dart';
import 'plan_gen.dart';
import 'input_widgets/experience_level_slider.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Input',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SettingsPage(title: 'Input User Info'),
    );
  }
}

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.title});
  final String title;

  @override
  State<SettingsPage> createState() => UserInput();
}

class UserInput extends State<SettingsPage> {
  // gender
  List<String> genderlist = <String>[
    'Select',
    'Male',
    'Female',
    'Prefer not to answer'
  ];
  late String gender = genderlist.first;

  // height
  int heightFt = 5;
  int heightIn = 6;
  final List<int> heightFtValues = [3, 4, 5, 6, 7];
  final List<int> heightInValues = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
  int totalHeight = 66;
  void _onHeightFtValueChange(int value) {
    setState(() {
      heightFt = value;
      totalHeight = heightFt * 12 + heightIn;
    });
  }

  void _onHeightInValueChange(int value) {
    setState(() {
      heightIn = value;
      totalHeight = heightFt * 12 + heightIn;
    });
  }

  // weight
  int weightLbs = 150;
  void _onWeightValueChange(int weightValue) {
    setState(() {
      weightLbs = weightValue;
    });
  }

  // age
  int age = 21;
  void _onAgeValueChange(int ageValue) {
    setState(() {
      age = ageValue;
    });
  }

  // experience level
  double experienceLevel = 5; // slider from 0-10
  String experienceLevelMessage =
      'I could comfortably jog a 5K right now but I wouldn’t be very fast'; // feedback for experience level
  void _onELMValueChange(double value) {
    setState(() {
      experienceLevel = value;
    });
  }

  // resting heart rate
  int rhr = 70;
  void _onrhrValueChange(int rhrValue) {
    setState(() {
      rhr = rhrValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(children: <Widget>[
        Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                //
                // GENDER INPUT
                Text(
                  'What is your gender?',
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                DropdownButton<String>(
                  value: gender,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                  items:
                      genderlist.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 16.0),

                //
                // HEIGHT INPUT
                const SizedBox(height: 16.0),
                Text(
                  'How tall are you?',
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                          child: ScrollingWheelInput(
                        minValue: 3,
                        maxValue: 7,
                        onChanged: _onHeightFtValueChange,
                      )),
                      const SizedBox(
                          width: 20.0,
                          height: 100,
                          child: Center(
                            child:
                                Text("ft.", style: TextStyle(fontSize: 18.0)),
                          )),
                      Flexible(
                          child: ScrollingWheelInput(
                        minValue: 0,
                        maxValue: 11,
                        onChanged: _onHeightInValueChange,
                      )),
                      const SizedBox(
                          width: 20.0,
                          height: 100,
                          child: Center(
                            child:
                                Text("in.", style: TextStyle(fontSize: 18.0)),
                          ))
                    ]),
                const SizedBox(height: 16.0),

                //
                // WEIGHT INPUT
                const SizedBox(height: 16.0),
                Text(
                  'How much do you weigh?',
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: NumericTextInput(
                            onInputValueChange: _onWeightValueChange),
                      ),
                      const SizedBox(
                          width: 50.0,
                          height: 50,
                          child: Center(
                            child:
                                Text("lbs.", style: TextStyle(fontSize: 18.0)),
                          )),
                    ]),
                const SizedBox(height: 16.0),

                //
                // AGE INPUT
                const SizedBox(height: 16.0),
                Text(
                  'How old are you?',
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: NumericTextInput(
                            onInputValueChange: _onAgeValueChange),
                      ),
                      const SizedBox(
                          width: 100.0,
                          height: 50,
                          child: Center(
                            child: Text("years old",
                                style: TextStyle(fontSize: 18.0)),
                          )),
                    ]),
                const SizedBox(height: 16.0),

                //
                // EXPERIENCE LEVEL
                ExperienceSliderInput(
                  experienceLevel: experienceLevel,
                  onChanged: _onELMValueChange,
                ),

                //
                // RHR INPUT
                const SizedBox(height: 16.0),
                Text(
                  'What is your resting heart rate?',
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: NumericTextInput(
                            onInputValueChange: _onrhrValueChange),
                      ),
                      const SizedBox(
                          width: 50.0,
                          height: 50,
                          child: Center(
                            child:
                                Text("bpm", style: TextStyle(fontSize: 18.0)),
                          )),
                    ]),
                const SizedBox(height: 16.0),

                //
                // GO TO NEXT PAGE
                const SizedBox(height: 32.0),
                ElevatedButton(
                  child: const Text('Next'),
                  onPressed: () {
                    // input verification
                    if (gender == 'Select' ||
                        gender == 'Prefer not to answer') {
                      List<Week> newWorkoutPlan = generatePlan(
                          "5K",
                          "female",
                          totalHeight,
                          weightLbs,
                          age,
                          experienceLevel.toInt(),
                          rhr);
                    } else {
                      List<Week> newWorkoutPlan = generatePlan(
                          "5K",
                          gender,
                          totalHeight,
                          weightLbs,
                          age,
                          experienceLevel.toInt(),
                          rhr);
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PlanGenerationPage()),
                    );
                  },
                ),
              ],
            ))
      ]),
    );
  }
}

class PlanGenerationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plan Generation'),
      ),
      body: const Center(
        child: Text('Generating Your Personal Workout Plan...'),
      ),
    );
  }
}
