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
      const SizedBox(height: 24.0),
      ElevatedButton(
        onPressed: () {
          openWorkout(WorkoutButton.getCurrWorkout());
        },
        child: Text(
          'Workout Details',
          style: const TextStyle(fontSize: 20),
        ),
      ),
      const SizedBox(height: 24.0),
    ]);
  }
}

void openWorkout(String? message) {
  GlobalKey<MyTabBarState> key = TabBarField.getKey();
  PageController? pageCont = key.currentState?.getPageController();
  int activityPageIdx = 2;

  if (pageCont != null) {
    pageCont.animateToPage(activityPageIdx,
        duration: const Duration(milliseconds: 200), curve: Curves.ease);
  }
}
