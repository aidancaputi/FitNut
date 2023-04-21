import 'package:flutter/material.dart';
import '../main.dart';

class WorkoutButton extends StatefulWidget {
  static String? getCurrWorkout() {
    return tempWkt;
  }

  final String? currWorkout;
  static String? tempWkt = 'currWorkout';

  WorkoutButton({
    required this.currWorkout,
  }) {
    tempWkt = currWorkout;
  }

  @override
  _WorkoutButtonState createState() => _WorkoutButtonState();
}

class _WorkoutButtonState extends State<WorkoutButton> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      const SizedBox(height: 32.0),
      ElevatedButton(
        onPressed: () {
          openWorkout(WorkoutButton.getCurrWorkout());
        },
        child: Text(
          'Start Workout',
          style: const TextStyle(fontSize: 30),
        ),
      ),
      const SizedBox(height: 32.0),
    ]);
  }
}

void openWorkout(String? message) {
  GlobalKey<MyTabBarState> key = TabBarField.getKey();
  PageController? pageCont = key.currentState?.getPageController();
  int activityPageIdx = 1;

  if (pageCont != null) {
    pageCont.animateToPage(activityPageIdx,
        duration: const Duration(milliseconds: 200), curve: Curves.ease);
    print(message);
  }
}
