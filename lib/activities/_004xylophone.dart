import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
