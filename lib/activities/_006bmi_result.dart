// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../widgets/mycontainer.dart';
import '../widgets/myscaffold.dart';

enum Gender { male, female }

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final bmi = ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return MyScaffold(
      title: 'BMI Result',
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Text(
              'Your result',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 50.0,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: MyContainer(
              color: Colors.pink[100]!,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmi['bmiResult']!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 50.0,
                    ),
                  ),
                  Text(
                    bmi['resultText']!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 50.0,
                    ),
                  ),
                  Text(
                    bmi['interprtation']!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.pink[300],
                    ),
                  ),
                ],
              ),
            ),
          ),
          MyContainer(
            color: Colors.pink[300]!,
            onTap: () => Navigator.pop(context),
            // width: double.infinity,
            child: Text(
              'Back',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
