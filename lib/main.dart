// ignore_for_file: prefer_const_constructors, library_prefixes, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'activities/_001iamrich.dart' as _001iamrich;
import 'activities/_002micard.dart' as _002micard;
import 'activities/_003dicee.dart' as _003dicee;
import 'activities/_004xylophone.dart' as _004xylophone;
import 'activities/_005quizzler.dart' as _005quizzler;
import 'activities/_006bmi.dart' as _006bmi;
import 'activities/_006bmi_result.dart' as _006bmi_result;

import 'widgets/myscaffold.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Pacifico',
            letterSpacing: 1.0,
          ),
        ),
        scaffoldBackgroundColor: Colors.pink[300],
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.pink,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Pacifico',
            letterSpacing: 1.0,
          ),
          subtitle1: TextStyle(
            color: Colors.pink,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Pacifico',
            letterSpacing: 1.0,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.pink,
          size: 20.0,
        ),
        cardTheme: CardTheme(
          color: Colors.white,
          shadowColor: Colors.pink[100],
          margin: EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 25.0,
          ),
        ),
        snackBarTheme: SnackBarThemeData(
          actionTextColor: Colors.pink,
          contentTextStyle: TextStyle(
            color: Colors.pink,
          ),
          backgroundColor: Colors.white,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        sliderTheme: SliderThemeData(
          thumbColor: Colors.pink,
          thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: 15.0,
          ),
          overlayColor: Colors.pink[100],
          overlayShape: RoundSliderOverlayShape(
            overlayRadius: 30.0,
          ),
          activeTrackColor: Colors.pink[300],
          inactiveTrackColor: Colors.pink[50],
        ),
        primaryColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyApp(),
        '/_001iamrich': (context) => _001iamrich.MyApp(),
        '/_002micard': (context) => _002micard.MyApp(),
        '/_003dicee': (context) => _003dicee.MyApp(),
        '/_004xylophone': (context) => _004xylophone.MyApp(),
        '/_005quizzler': (context) => _005quizzler.MyApp(),
        '/_006bmi': (context) => _006bmi.MyApp(),
        '/_006bmi_result': (context) => _006bmi_result.MyApp(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  final List<String> _activities = [
    '/_001iamrich',
    '/_002micard',
    '/_003dicee',
    '/_004xylophone',
    '/_005quizzler',
    '/_006bmi',
  ];

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: 'Flutter app',
      child: ListView.separated(
        padding: EdgeInsets.all(10.0),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, _activities[index]),
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                _activities[index],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => Divider(),
        itemCount: _activities.length,
      ),
    );
  }
}
