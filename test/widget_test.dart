import 'package:FitNut/user_input.dart';
import 'package:FitNut/user_inputs/workout_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:FitNut/select_workout.dart';
import 'package:FitNut/main.dart';

void main() {
  //this test makes sure that the 3 tabs exist and can be tapped between
  testWidgets('Tab bars can be navigated between', (tester) async {
    // create tab bar
    await tester.pumpWidget(const MaterialApp(home: MyTabBar()));

    // tap on the second tab (Search)
    await tester.tap(find.text('Current Workout'));
    await tester.pumpAndSettle();

    // verify that the second tab is selected
    expect(find.text('Next'), findsNothing);
    expect(find.byIcon(Icons.directions_car), findsOneWidget);
    expect(find.text('See Plan'), findsNothing);

    // tap on the third tab (create new workout)
    await tester.tap(find.text('Create New Workout'));
    await tester.pumpAndSettle();

    // verify that the third tab is selected
    expect(find.text('Next'), findsOneWidget);
    expect(find.byIcon(Icons.directions_car), findsNothing);
    expect(find.text('See Plan'), findsNothing);
  });

  // this test navigates to the select workout page and tests the workout selector
  testWidgets('Select workout dropdown', (tester) async {
    await tester.pumpWidget(const SelectWorkout());

    expect(find.byType(DropdownButton<String>),
        findsOneWidget); // assure that the dropdown for gender exists

    final workout =
        find.byType(DropdownButton<String>); //select the workout dropdown

    //tap the workout dropdown and select 5K
    await tester.tap(workout);
    await tester.pumpAndSettle();
    final fiveK = find.text('5K').last;
    await tester.tap(fiveK);
    await tester.pumpAndSettle();

    //tap the workout dropdown and select Half Marathon
    await tester.tap(workout);
    await tester.pumpAndSettle();
    final halfMarathon = find.text('Half Marathon').last;
    await tester.tap(halfMarathon);
    await tester.pumpAndSettle();

    //tap the workout dropdown and select Marathon
    await tester.tap(workout);
    await tester.pumpAndSettle();
    final marathon = find.text('Marathon').last;
    await tester.tap(marathon);
    await tester.pumpAndSettle();
  });

  // this test navigates to the select workout page and tests the next button
  testWidgets('Select workout next button navigates to input page',
      (WidgetTester tester) async {
    await tester.pumpWidget(const SelectWorkout());

    // find the next button
    final Finder buttonFinder = find.byType(ElevatedButton);

    // press the button with no workout selected
    await tester.tap(buttonFinder);
    await tester.pump();

    // check that the SnackBar is displayed
    expect(find.byType(SnackBar), findsOneWidget);

    // check the content of the SnackBar
    expect(find.text('Please select a workout type'), findsOneWidget);

    // select a 5K workout
    await tester.tap(find.byType(DropdownButton<String>));
    await tester.pumpAndSettle();
    final fiveK = find.text('5K').last;
    await tester.tap(fiveK);
    await tester.pumpAndSettle();

    // Press the next button
    await tester.tap(buttonFinder);
    await tester.pumpAndSettle();

    // check that the input page is displayed
    expect(find.byType(InputPage), findsOneWidget);
  });

  //this test navigates to the input tab and checks that all the input messages are correct
  testWidgets('Input page has correct questions', (tester) async {
    WorkoutProperties workoutProperties = WorkoutProperties();
    await tester
        .pumpWidget(MaterialApp(home: Builder(builder: (BuildContext context) {
      return InputPage(workoutProperties: workoutProperties);
    })));

    expect(find.text('What is your gender?'), findsOneWidget);
    expect(find.text('How tall are you?'), findsOneWidget);
    expect(find.text('How much do you weigh?'), findsOneWidget);
    expect(find.text('How old are you?'), findsOneWidget);
    expect(find.text('How much experience do you have?'), findsOneWidget);
    expect(find.text('What is your resting heart rate?'), findsOneWidget);
    expect(find.text('How long do you want your workout plan to be?'),
        findsOneWidget);
    expect(
        find.text('What days can you workout on? - please select at least 3'),
        findsOneWidget);
  });

  // this tests the gender dropdown widget
  testWidgets('Gender dropdown', (tester) async {
    WorkoutProperties workoutProperties = WorkoutProperties();
    await tester
        .pumpWidget(MaterialApp(home: Builder(builder: (BuildContext context) {
      return InputPage(workoutProperties: workoutProperties);
    }))); //go to settings page

    expect(find.byType(DropdownButton<String>),
        findsOneWidget); //asser that the dropdown for gender exists

    final gender =
        find.byType(DropdownButton<String>); //select the gender dropdown

    //tap the gender dropdown and select male
    await tester.tap(gender);
    await tester.pumpAndSettle();
    final male = find.text('Male').last;
    await tester.tap(male);
    await tester.pumpAndSettle();

    //tap gender dropdown and select female
    await tester.tap(gender);
    await tester.pumpAndSettle();
    final female = find.text('Female').last;
    await tester.tap(female);
    await tester.pumpAndSettle();

    //tap gender dropdown and select other
    await tester.tap(gender);
    await tester.pumpAndSettle();
    final other = find.text('Prefer not to answer').last;
    await tester.tap(other);
    await tester.pumpAndSettle();
  });

  // this tests the generate workout button
  testWidgets('Generate Workout', (tester) async {
    WorkoutProperties workoutProperties = WorkoutProperties();
    await tester
        .pumpWidget(MaterialApp(home: Builder(builder: (BuildContext context) {
      return InputPage(workoutProperties: workoutProperties);
    }))); //go to settings page

    expect(find.byType(DropdownButton<String>),
        findsOneWidget); //asser that the dropdown for gender exists

    final gender =
        find.byType(DropdownButton<String>); //select the gender dropdown

    //tap the gender dropdown and select male
    await tester.tap(gender);
    await tester.pumpAndSettle();
    final male = find.text('Male').last;
    await tester.tap(male);
    await tester.pumpAndSettle();
  });
}
