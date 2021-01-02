import 'package:flutter/material.dart';
import 'screens/tasks_screen.dart';

//State Management
//CheckBox
//ListViewBuilder

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreen(),
    );
  }
}
