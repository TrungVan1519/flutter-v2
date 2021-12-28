import 'package:flutter/material.dart';
import 'dart:math';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

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
          content: const Text('You won!'),
          action: SnackBarAction(
            label: 'Ok',
            onPressed: () => ScaffoldMessenger.of(context).hideCurrentSnackBar(),
          ),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: () => updateDices(context),
                child: Image.asset(
                  'images/dice$leftDice.png',
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
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
    );
  }
}
