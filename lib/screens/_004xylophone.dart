// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import '../widgets/myscaffold.dart';

class MyScreen extends StatelessWidget {
  void playSound(int sound) {
    AudioCache().play('note$sound.wav');
  }

  Widget renderWidget({required MaterialColor bgColor, required int sound}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(bgColor),
        ),
        onPressed: () => playSound(sound),
        child: Text(
          '',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: 'Xylophone',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          renderWidget(bgColor: Colors.red, sound: 1),
          renderWidget(bgColor: Colors.orange, sound: 2),
          renderWidget(bgColor: Colors.yellow, sound: 3),
          renderWidget(bgColor: Colors.teal, sound: 4),
          renderWidget(bgColor: Colors.blue, sound: 5),
          renderWidget(bgColor: Colors.purple, sound: 6),
          renderWidget(bgColor: Colors.deepPurple, sound: 7),
        ],
      ),
    );
  }
}
