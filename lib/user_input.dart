import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

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
  double _currentSliderValue = 0;
  String _currentMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // future builder for loading in saved values
        child: FutureBuilder<double>(
          future: readSlider(), // read saved values
          builder: (BuildContext context, AsyncSnapshot<double> snapshot) {
            // once the values are read build the widgets using the read values
            if (snapshot.hasData) {
              _currentSliderValue = snapshot.data!;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'How fit are you?',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    'Enter 1-10:',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Slider(
                      value: _currentSliderValue,
                      max: 10,
                      divisions: 10,
                      label: _currentSliderValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value;
                          if (_currentSliderValue <= 3) {
                            _currentMessage = 'Beginner';
                          } else if (_currentSliderValue < 8) {
                            _currentMessage = 'Intermediate';
                          } else {
                            _currentMessage = 'Expert';
                          }
                          writeSlider(_currentSliderValue);
                        });
                      }),
                  Text(
                    '$_currentSliderValue',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    _currentMessage,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              );

              // if the values are not read, display a loading symbol
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: CircularProgressIndicator(),
                  ),
                ],
              );
            }
          },
        ),
      ),
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
