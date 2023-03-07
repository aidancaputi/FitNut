import 'package:flutter/material.dart';
import 'package:FitNut/file_utilities.dart';
import 'package:FitNut/plan_gen.dart';

class loadPlan extends StatefulWidget {
  final List<Week> newPlan;
  const loadPlan({required this.newPlan});
  @override
  _loadPlanState createState() => _loadPlanState();
}

class _loadPlanState extends State<loadPlan> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: FutureBuilder<int>(
        future: writePlan(widget.newPlan, "workout1.txt"), // read saved values
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          // once the values are read build the widgets using the read values
          if (snapshot.hasData) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text("Generated!"),
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
                Text('Generating Your Personal Workout Plan...'),
              ],
            );
          }
        },
      ),
    );
  }
}
