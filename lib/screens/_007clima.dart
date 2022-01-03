// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../entities/weather.dart';
import '../widgets/myscaffold.dart';

class MyScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyScreenState();
  }
}

class _MyScreenState extends State<MyScreen> {
  void getWeatherData() async {
    Navigator.pushNamed(context, '/_007clima/result', arguments: {
      'weatherData': await Weather().getLocationWeather(),
    });
  }

  @override
  void initState() {
    super.initState();
    getWeatherData();
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: 'Clima',
      child: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
