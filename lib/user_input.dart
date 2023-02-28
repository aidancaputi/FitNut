import 'package:flutter/material.dart';
import 'input_widgets/scroll_wheel.dart';
import 'input_widgets/number_input.dart';
import 'plan_gen.dart';
// file saving libraries
// import 'package:path_provider/path_provider.dart';
// import 'dart:io';

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
  int heightFt = 0;
  int heightIn = 0;
  final List<int> heightFtValues = [3, 4, 5, 6, 7];
  final List<int> heightInValues = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
  int totalHeight = 0;
  void _handleHeightFtValue(int value) {
    setState(() {
      totalHeight = value * 12 + totalHeight;
    });
  }

  void _handleHeightInValue(int value) {
    setState(() {
      heightIn = value + totalHeight;
    });
  }

  void _onHeightFtValueChange(int value) {
    setState(() {
      totalHeight = value * 12 + totalHeight;
    });
  }

  void _onHeightInValueChange(int value) {
    setState(() {
      heightIn = value + totalHeight;
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
  String experienceLevelMessage =
      'I could comfortably jog a 5K right now but I wouldn’t be very fast'; // feedback for experience level

  // resting heart rate
  int rhr = 0;
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
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: NumericTextInput(
                            onInputValueChange: _onHeightFtValueChange),
                      ),
                      const SizedBox(
                          width: 50.0,
                          height: 50,
                          child: Center(
                            child:
                                Text("ft.", style: TextStyle(fontSize: 18.0)),
                          )),
                      Flexible(
                        child: NumericTextInput(
                            onInputValueChange: _onHeightInValueChange),
                      ),
                      const SizedBox(
                          width: 50.0,
                          height: 50,
                          child: Center(
                            child:
                                Text("in.", style: TextStyle(fontSize: 18.0)),
                          )),
                      /*
                      Flexible(
                          child: ScrollingWheelInput(
                              onChanged: _handleHeightFtValue,
                              values: heightFtValues)),
                      const SizedBox(
                          width: 20.0,
                          height: 100,
                          child: Center(
                            child:
                                Text("ft.", style: TextStyle(fontSize: 18.0)),
                          )),
                      Flexible(
                          child: ScrollingWheelInput(
                              onChanged: _handleHeightInValue,
                              values: heightInValues)),
                      const SizedBox(
                          width: 20.0,
                          height: 100,
                          child: Center(
                            child:
                                Text("in.", style: TextStyle(fontSize: 18.0)),
                          )) */
                    ]),
                const SizedBox(height: 16.0),

                //
                // WEIGHT INPUT
                const SizedBox(height: 16.0),
                Text(
                  'How much do you weigh?',
                  style: Theme.of(context).textTheme.headlineMedium,
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
                const SizedBox(height: 16.0),
                Text(
                  'How much experience do you have?',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Slider(
                    value: experienceLevel.toDouble(),
                    max: 10,
                    divisions: 9,
                    min: 1,
                    label: experienceLevel.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        experienceLevel = value.toInt();
                        switch (experienceLevel) {
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
                  '$experienceLevel: $experienceLevelMessage',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 16.0),

                //
                // RHR INPUT
                const SizedBox(height: 16.0),
                Text(
                  'What is your resting heart rate?',
                  style: Theme.of(context).textTheme.headlineMedium,
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
                    generatePlan("5K", gender, totalHeight, weightLbs, age,
                        experienceLevel, rhr);

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

/* file saving functions
// function for getting the current filepath
Future<String> getFilePath(String fileName) async {
  final directory = await getApplicationDocumentsDirectory();
  String path = directory.path;

  return '$path/$fileName';
}

// function for saving the latest slider value to a txt file
void writeSlider(double sliderValue) async {
  File file = File(await getFilePath('sliderValue.txt'));
  file.writeAsString('$sliderValue');
}

// function for reading the saved slider value from a txt file
Future<double> readSlider() async {
  try {
    File file = File(await getFilePath('sliderValue.txt'));
    String contents = await file.readAsString();

    // optional 3 second delay to demonstrate loading indicator:
    // await Future.delayed(Duration(seconds: 3));

    return double.parse(contents);
  } catch (e) {
    return 0;
  }
}
*/