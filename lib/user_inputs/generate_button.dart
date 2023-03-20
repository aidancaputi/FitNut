import 'package:flutter/material.dart';
import 'package:FitNut/user_input.dart';
import 'package:FitNut/plan_gen.dart';
import 'package:FitNut/user_inputs/plan_loading.dart';

class GenerateButton extends StatefulWidget {
  final String gender;
  final int totalHeight;
  final int weightLbs;
  final int age;
  final int experienceLevel;
  final int rhr;
  final int workoutLength;
  final List<bool> days;
  final int totalDays;
  GenerateButton(
      {required this.gender,
      required this.totalHeight,
      required this.weightLbs,
      required this.age,
      required this.experienceLevel,
      required this.rhr,
      required this.workoutLength,
      required this.days,
      required this.totalDays});
  @override
  _GenerateButtonState createState() => _GenerateButtonState();
}

class _GenerateButtonState extends State<GenerateButton> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      const SizedBox(height: 32.0),
      ElevatedButton(
        onPressed: () {
          List<Week> newPlan;
          // input verification
          if (widget.gender == "Select") {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Please select a gender')),
            );
          } else if (widget.totalHeight == 0) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Please enter your height')),
            );
          } else if (widget.weightLbs == 0) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Please enter your weight')),
            );
          } else if (widget.age == 0) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Please enter your age')),
            );
          } else if (widget.rhr == 0) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                  content: Text('Please enter your resting heart rate')),
            );
          } else if (widget.weightLbs == 0) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Please enter your weight')),
            );
          } else if (widget.totalDays < 3) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                  content: Text('Please select at least 3 days to workout on')),
            );
          } else {
            newPlan = generatePlan(
                "5K",
                widget.gender,
                widget.totalHeight,
                widget.weightLbs,
                widget.age,
                widget.experienceLevel,
                widget.rhr);
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PlanGenerationPage(newPlan: newPlan)),
            );
          }
        },
        child: const Text(
          'Generate 5K Workout',
          style: TextStyle(fontSize: 30),
        ),
      ),
      const SizedBox(height: 32.0),
    ]);
  }
}

// when the user pushes the generate workout button it takes them to this page
class PlanGenerationPage extends StatelessWidget {
  final List<Week> newPlan;
  const PlanGenerationPage({required this.newPlan});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plan Generation'),
      ),
      body: Center(
        child: loadPlan(newPlan: newPlan),
      ),
    );
  }
}
