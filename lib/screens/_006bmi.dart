// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../entities/bmi_brain.dart';

import '../widgets/mycontainer.dart';
import '../widgets/myicon.dart';
import '../widgets/myfloatingactionbutton.dart';
import '../widgets/myscaffold.dart';

enum Gender { male, female }

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Gender gender = Gender.male;
  double height = 180;
  double weight = 50;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: 'BMI',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    onTap: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                    color: gender == Gender.male
                        ? Colors.pink[100]!
                        : Colors.white,
                    child: MyIcon(
                      icon: Icons.male,
                      label: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    onTap: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    color: gender == Gender.female
                        ? Colors.pink[100]!
                        : Colors.white,
                    child: MyIcon(
                      icon: Icons.female,
                      label: 'Female',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '$height',
                        style: TextStyle(
                          fontSize: 50.0,
                        ),
                      ),
                      Text('cm'),
                    ],
                  ),
                  Slider(
                    value: height,
                    min: 100,
                    max: 250,
                    onChanged: (newVal) {
                      setState(() {
                        height = newVal.roundToDouble();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Weight',
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              '$weight',
                              style: TextStyle(
                                fontSize: 30.0,
                              ),
                            ),
                            Text(
                              'kg',
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            MyFloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (weight > 0) {
                                    weight--;
                                  }
                                });
                              },
                              icon: Icon(
                                FontAwesomeIcons.minus,
                              ),
                            ),
                            SizedBox(width: 10.0),
                            MyFloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: Icon(
                                FontAwesomeIcons.plus,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              '$age',
                              style: TextStyle(
                                fontSize: 30.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            MyFloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (age > 0) {
                                    age--;
                                  }
                                });
                              },
                              icon: Icon(
                                FontAwesomeIcons.minus,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            MyFloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: Icon(
                                FontAwesomeIcons.plus,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          MyContainer(
            color: Colors.pink[300]!,
            onTap: () {
              BmiBrain bmi = BmiBrain(height: height, weight: weight);
              Navigator.pushNamed(context, '/_006bmi/result', arguments: {
                'bmiResult': bmi.calculateBMI(),
                'resultText': bmi.getResult(),
                'interprtation': bmi.getInterpretation(),
              });
            },
            // width: double.infinity,
            child: Text(
              'Calculate your BMI',
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
