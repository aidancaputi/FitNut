import 'package:flutter/material.dart';
import 'calendar.dart';
import 'user_input.dart';


void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 4,
      child: Scaffold(
          body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            const SliverAppBar(
              title: Text('FitNut'),
              pinned: true,
              floating: true,
              bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.calendar_today)),
                  Tab(icon: Icon(Icons.card_membership_sharp)),
                  Tab(icon: Icon(Icons.waves_rounded)),
                  Tab(icon: Icon(Icons.settings_sharp)),
                ],
              ),
            ),
          ];
        },
        body: const TabBarView(
          children: <Widget>[
            CalendarApp(),
            Icon(Icons.flight, size: 437.5),
            Icon(Icons.directions_car, size: 350),
            Settings(),
          ],
        ),
      )),
    ));
  }
}

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
        primarySwatch: Colors.blue,
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
        title: const Text('TableCalendar Example'),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(height: 20.0),
        ElevatedButton(
          child: const Text('Calendar View'),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => TableBasicsExample()),
          ),
        )
      ])),
    );
  }
}
