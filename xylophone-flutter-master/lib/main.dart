//AudioPlayers Library

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildWidget({int sound, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(sound);
        },
        child: SizedBox(
          height: 5,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildWidget(sound: 1, color: Colors.purple),
              buildWidget(sound: 2, color: Colors.indigo),
              buildWidget(sound: 3, color: Colors.blue),
              buildWidget(sound: 4, color: Colors.green),
              buildWidget(sound: 5, color: Colors.yellow),
              buildWidget(sound: 6, color: Colors.orange),
              buildWidget(sound: 7, color: Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}
