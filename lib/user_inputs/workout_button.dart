import 'package:flutter/material.dart';
import 'package:FitNut/plan_gen.dart';
import 'package:FitNut/user_input.dart';

class WorkoutButton extends StatefulWidget {
  final String workout;
  WorkoutButton({required this.workout});
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
          List<Week> newPlan;
          // input verification
          if (widget.workout == "Select") {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Please select a workout type')),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      PlanGenerationPage(workoutType: widget.workout)),
            );
          }
        },
        child: const Text(
          'Next',
          style: TextStyle(fontSize: 40),
        ),
      ),
      const SizedBox(height: 32.0),
    ]);
  }
}

// when the user pushes the generate workout button it takes them to this page
class PlanGenerationPage extends StatelessWidget {
  final String workoutType;
  const PlanGenerationPage({required this.workoutType});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select a Workout'),
      ),
      body: Center(
        child: Input(workoutType: workoutType),
      ),
    );
  }
}
