import 'package:counter_app/pages/counter_page.dart';
import 'package:counter_app/pages/home_page.dart';
import 'package:counter_app/pages/user_input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/counterpage': (context) => CounterPage(),
        '/textpage': (context) => UserInputPage(),
      },
    );
  }
}
