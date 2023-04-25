import 'package:flutter/material.dart';
import 'calendar_files/calendarOps.dart';
import 'new_workout_files/select_workout.dart';
import 'package:formatted_text/formatted_text.dart';

void main() {
  runApp(TabBarField());
}

class TabBarField extends StatelessWidget {
  static final _myTabbedPageKey = GlobalKey<MyTabBarState>();

  static GlobalKey<MyTabBarState> getKey() {
    return _myTabbedPageKey;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: MyTabBar(
          key: _myTabbedPageKey,
        ));
  }
}

class MyTabBar extends StatefulWidget {
  const MyTabBar({Key? key}) : super(key: key);

  @override
  MyTabBarState createState() => MyTabBarState();
}

class MyTabBarState extends State<MyTabBar> {
  int _selectedIndex = 0;
  static final PageController _pageController = PageController(initialPage: 0);
  static List<Widget> _widgetOptions = <Widget>[
    SelectWorkout(),
    CalendarApp(),
    makeText(),
  ];

  PageController getPageController() {
    return _pageController;
  }

  void moveToPage2() {
    setState(() {
      _pageController.animateToPage(2,
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(index,
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_add),
            label: 'Create New Workout',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar View',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_run),
            label: 'Current Workout',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.orange,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

Widget makeText() {
  return ListView(children: <Widget>[
    Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              FormattedText(
                '*Workout Guide*',
                textAlign: TextAlign.center,
                textScaleFactor: 5.0,
              ),
              FormattedText(
                '#Paces:#',
                textAlign: TextAlign.center,
                textScaleFactor: 2.3,
              ),
              FormattedText(''),
              FormattedText(
                '_Easy Pace_:',
                textAlign: TextAlign.center,
                textScaleFactor: 1.5,
              ),
              FormattedText(
                'You should be able to hold a conversation for the duration of the activity without losing your breath. It should be embarrassingly slow!',
                textAlign: TextAlign.center,
                textScaleFactor: 1.2,
              ),
              FormattedText(''),
              FormattedText(
                '_Tempo Pace_:',
                textAlign: TextAlign.center,
                textScaleFactor: 1.5,
              ),
              FormattedText(
                'You should be on the border of discomfort, but you should still be able to hold the pace for the duration of the activity. If you have to stop and rest, you’re going too fast, and if you could hold a conversation without being out of breath, you\'re going too slow.',
                textAlign: TextAlign.center,
                textScaleFactor: 1.2,
              ),
              FormattedText(''),
              FormattedText(
                'Hard Pace_:',
                textAlign: TextAlign.center,
                textScaleFactor: 1.5,
              ),
              FormattedText(
                'You shouldn’t be able to hold this pace for very long. You should be panting, sweating, and pushing yourself!',
                textAlign: TextAlign.center,
                textScaleFactor: 1.2,
              ),
              FormattedText(''),
              FormattedText(
                '_Race Pace_:',
                textAlign: TextAlign.center,
                textScaleFactor: 1.5,
              ),
              FormattedText(
                'This one is exactly what it sounds like. You should be running as if you’re in a race and everybody you know is cheering you on. Don’t push too hard, though, you don’t want to collapse in front of them!',
                textAlign: TextAlign.center,
                textScaleFactor: 1.2,
              ),
            ]))
  ]);
}
