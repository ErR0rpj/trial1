//Themedata()
//TextTheme()
//decoration: BoxDecoration(borderRadius:)
//Custom Widgets in input_page.dart file
//Gesture Detector()
//Enums
//Function as argument
//Slider
//WidgetTheme (not implemented in this app though but can be found in videos)
//Custom Widget (here a button is made)
//Routes and Navigation

import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Provides common theme for whole app
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0D22),
        scaffoldBackgroundColor: Color(0xFF0A0D22),
      ),
      home: InputPage(),
    );
  }
}
