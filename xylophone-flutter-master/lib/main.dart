//AudioPlayers Library

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildWidget(int sound, Color color) {
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
              buildWidget(1, Colors.purple),
              buildWidget(2, Colors.indigo),
              buildWidget(3, Colors.blue),
              buildWidget(4, Colors.green),
              buildWidget(5, Colors.yellow),
              buildWidget(6, Colors.orange),
              buildWidget(7, Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}
