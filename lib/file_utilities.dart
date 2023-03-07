import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'plan_gen.dart';
import 'dart:convert';

// function for getting the current filepath
Future<String> getFilePath(String fileName) async {
  final directory = await getApplicationDocumentsDirectory();
  String path = directory.path;

  return '$path/$fileName';
}

// function for saving the latest slider value to a txt file
Future<int> writePlan(List<Week> newPlan, String fileName) async {
  File file = File(await getFilePath(fileName));
  final buffer = StringBuffer();
  for (var i = 0; i < newPlan.length; i++) {
    buffer.write(newPlan[i].toJson());
    buffer.write('\n');
  }
  file.writeAsString(buffer.toString());

  await Future.delayed(const Duration(seconds: 3));
  return 1;
}

// function for reading the saved slider value from a txt file
Future<String> readPlan(String fileName) async {
  try {
    File file = File(await getFilePath(fileName));
    String contents = await file.readAsString();

    // optional 3 second delay to demonstrate loading indicator:
    await Future.delayed(const Duration(seconds: 3));

    return contents;
  } catch (e) {
    return '0';
  }
}
