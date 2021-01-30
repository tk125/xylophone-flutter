import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final AudioCache player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color actualColor, int number}) {
    return Expanded(
      child: FlatButton(
        color: actualColor,
        onPressed: () {
          playSound(number);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(actualColor: Colors.red, number: 1),
              buildKey(actualColor: Colors.orange, number: 2),
              buildKey(actualColor: Colors.yellow, number: 3),
              buildKey(actualColor: Colors.green, number: 4),
              buildKey(actualColor: Colors.teal, number: 5),
              buildKey(actualColor: Colors.blue, number: 6),
              buildKey(actualColor: Colors.purple, number: 7),
            ],
          ),
        ),
      ),
    );
  }
}
