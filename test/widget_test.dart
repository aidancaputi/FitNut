// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:FitNut/user_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:FitNut/main.dart';

void main() {
  //this test makes sure that the 4 tabs exist and can be tapped between
  testWidgets('Tab bars can be navigated between', (tester) async {
    // Test code goes here.
    await tester.pumpWidget(const TabBarDemo());
    await tester.tap(find.byIcon(Icons.calendar_today));
    await tester.tap(find.byIcon(Icons.card_membership_sharp));
    await tester.tap(find.byIcon(Icons.waves_rounded));
    await tester.tap(find.byIcon(Icons.settings_sharp));

    //await tester.enterText(find.byType(TextField), '18');
  });

  //this test navigates to the input tab and checks that all the input messages are correct
  testWidgets('Input page has correct questions', (tester) async {
    const String workoutType = "5K";
    await tester.pumpWidget(const Input(workoutType: workoutType));

    expect(find.text('What is your gender?'), findsOneWidget);
    expect(find.text('How tall are you?'), findsOneWidget);
    expect(find.text('How much do you weigh?'), findsOneWidget);
    expect(find.text('How old are you?'), findsOneWidget);
    expect(find.text('How much experience do you have?'), findsOneWidget);
    expect(find.text('What is your resting heart rate?'), findsOneWidget);
  });

  //this tests the gender dropdown widget
  testWidgets('Gender dropdown', (tester) async {
    const String workoutType = "5K";
    await tester.pumpWidget(
        const Input(workoutType: workoutType)); //go to settings page

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
}
