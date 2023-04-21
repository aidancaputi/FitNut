import 'package:flutter/material.dart';
import 'calendar_files/calendarOps.dart';
import 'select_workout.dart';

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
  static const List<Widget> _widgetOptions = <Widget>[
    CalendarApp(),
    Icon(Icons.directions_car, size: 350),
    SelectWorkout(),
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
            icon: Icon(Icons.calendar_today),
            label: 'Calendar View',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_run),
            label: 'Current Workout',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_add),
            label: 'Create New Workout',
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
