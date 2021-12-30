// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'dart:math';

import '../widgets/myscaffold.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDice = 1;
  int rightDice = 1;

  void updateDices(BuildContext context) {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });

    if (leftDice == rightDice) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'You won!',
          ),
          action: SnackBarAction(
            label: 'Ok',
            onPressed: () =>
                ScaffoldMessenger.of(context).hideCurrentSnackBar(),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: 'Dicee',
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () => updateDices(context),
                  child: Image.asset(
                    'images/dice$leftDice.png',
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () => updateDices(context),
                  child: Image.asset(
                    'images/dice$rightDice.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
