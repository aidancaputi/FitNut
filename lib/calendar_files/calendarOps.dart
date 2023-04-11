import 'package:flutter/material.dart';
import 'calendar.dart';
import '../file_utilities.dart';

class CalendarApp extends StatelessWidget {
  const CalendarApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
      ),
      home: CalPage(),
    );
  }
}

class CalPage extends StatefulWidget {
  //State<MyHomePage> createState() => _MyHomePageState();
  @override
  _CalState createState() => _CalState();
}

class _CalState extends State<CalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('TableCalendar', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
          child: FutureBuilder<String>(
            future: readPlan("workout5k.txt"), // read saved values
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              // once the values are read build the widgets using the read values
              if (snapshot.hasData) {
                String fileSourceStr = snapshot.data!;
                return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20.0),
                      ElevatedButton(
                        child: const Text('See Plan',
                            style: TextStyle(color: Colors.white)),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) =>
                                  TableEvents(fileSourceStr: fileSourceStr)),
                        ),
                      )
                    ]);

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
        ),
      ])),
    );
  }
}
