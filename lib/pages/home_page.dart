import 'package:counter_app/pages/counter_page.dart';
import 'package:counter_app/pages/user_input_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    CounterPage(),
    UserInputPage(),
  ];

  @override
  Widget build(BuildContext context) {
    print('HomePage build called. _selectedIndex: $_selectedIndex');

    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.calculate), label: 'COUNTER'),
          BottomNavigationBarItem(
              icon: Icon(Icons.read_more), label: 'USERINPUT'),
        ],
      ),
    );
  }
}
