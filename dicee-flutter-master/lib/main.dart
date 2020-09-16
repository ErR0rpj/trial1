//Expanded Class
//Flex
//Flat Button
//Stateless widget
//Stateful widget
//setState

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:shake/shake.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceNumber1 = 6;
  int diceNumber2 = 6;

  @override
  void initState() {
    super.initState();
    ShakeDetector detector = ShakeDetector.autoStart(onPhoneShake: () {
      setState(() {
        print('Ghusa\n');
        diceNumber1 = (Random().nextInt(6)) + 1;
        diceNumber2 = (Random().nextInt(6)) + 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          //Child of this widget fill all the area. Makes code Dynamic.
          Expanded(
            flex: 1, //It is ratio of area taken by the child.
            child: FlatButton(
              onPressed: () {
                //It needs to be defined. Otherwise, dicenumber will get
                //updated next time when the build is called.
                setState(() {
                  diceNumber1 = (Random().nextInt(6)) + 1;
                  diceNumber2 = (Random().nextInt(6)) + 1;
                });
              },
              child: Image.asset('images/dice$diceNumber1.png'),
            ),
          ),
          Expanded(
            flex: 1,
            //Any inserted image or asset will become button
            child: FlatButton(
              onPressed: () {
                setState(() {
                  diceNumber2 = (Random().nextInt(6)) + 1;
                  diceNumber1 = (Random().nextInt(6)) + 1;
                });
              },
              child: Image.asset('images/dice$diceNumber2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
