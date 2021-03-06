// ignore_for_file: prefer_const_constructors, library_prefixes, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'screens/_001iamrich.dart' as _001iamrich;
import 'screens/_002micard.dart' as _002micard;
import 'screens/_003dicee.dart' as _003dicee;
import 'screens/_004xylophone.dart' as _004xylophone;
import 'screens/_005quizzler.dart' as _005quizzler;
import 'screens/_006bmi.dart' as _006bmi;
import 'screens/_006bmi.result.dart' as _006bmi_result;
import 'screens/_007clima.dart' as _007clima;
import 'screens/_007clima.city.dart' as _007clima_city;
import 'screens/_007clima.result.dart' as _007clima_result;
import 'screens/_008bitcoin.dart' as _008bitcoin;

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
        '/': (context) => MyScreen(),
        '/_001iamrich': (context) => _001iamrich.MyScreen(),
        '/_002micard': (context) => _002micard.MyScreen(),
        '/_003dicee': (context) => _003dicee.MyScreen(),
        '/_004xylophone': (context) => _004xylophone.MyScreen(),
        '/_005quizzler': (context) => _005quizzler.MyScreen(),
        '/_006bmi': (context) => _006bmi.MyScreen(),
        '/_007clima': (context) => _007clima.MyScreen(),
        '/_007clima/city': (context) => _007clima_city.MyScreen(),
        '/_008bitcoin': (context) => _008bitcoin.MyScreen(),
      },
      onGenerateRoute: (settings) {
        final args = settings.arguments as Map<String, dynamic>;

        switch (settings.name) {
          case '/_006bmi/result':
            return MaterialPageRoute(
              builder: (context) => _006bmi_result.MyScreen(
                bmiResult: args['bmiResult'],
                resultText: args['resultText'],
                interprtation: args['interprtation'],
              ),
            );
          case '/_007clima/result':
            return MaterialPageRoute(
              builder: (context) => _007clima_result.MyScreen(
                weatherData: args['weatherData'],
              ),
            );
          default:
            break;
        }
      },
    ),
  );
}

class MyScreen extends StatelessWidget {
  final List<String> _activities = [
    '/_001iamrich',
    '/_002micard',
    '/_003dicee',
    '/_004xylophone',
    '/_005quizzler',
    '/_006bmi',
    '/_007clima',
    '/_008bitcoin',
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
