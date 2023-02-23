import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'scroll_wheel.dart';

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
  // local variables to store current values
  // local variables to store current inputs
  List<String> genderlist = <String>[
    'Select',
    'Male',
    'Female',
    'Prefer not to answer'
  ];
  late String gender = genderlist.first;

  int heightIn = 0;
  int weightLbs = 0;
  int age = 0;
  double experienceLevel = 0; // slider from 0-10
  String experienceLevelMessage = ''; // feedback for experience level
  int rhr = 0;

  void _handleHeightValue(int value) {
    setState(() {
      heightIn = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
          child: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          //
          // gender selection dropdown button
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
            items: genderlist.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          //
          // height
          Text(
            'How tall are you?',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          ScrollingWheelInput(onChanged: _handleHeightValue),
          Text(
            'Enter 1-10:',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Slider(
              value: experienceLevel,
              max: 10,
              divisions: 10,
              label: experienceLevel.round().toString(),
              onChanged: (double value) {
                setState(() {
                  experienceLevel = value;
                  if (experienceLevel <= 3) {
                    experienceLevelMessage = 'Beginner';
                  } else if (experienceLevel < 8) {
                    experienceLevelMessage = 'Intermediate';
                  } else {
                    experienceLevelMessage = 'Expert';
                  }
                  writeSlider(experienceLevel);
                });
              }),
          Text(
            '$experienceLevel',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
            experienceLevelMessage,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ))),
    );
  }
}

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
