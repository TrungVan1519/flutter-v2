// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../entities/weather.dart';
import '../widgets/myscaffold.dart';

class MyScreen extends StatefulWidget {
  final dynamic weatherData;

  MyScreen({required this.weatherData});

  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  Weather weather = Weather();
  num temperature = 0;
  String weatherIcon = 'Error';
  String weatherMessage = 'Unable to get weather data';
  String cityName = '';

  void updateUI(dynamic weatherData) {
    setState(() {
      if (weatherData != null) {
        temperature = weatherData['main']['temp'];
        weatherIcon = weather.getWeatherIcon(weatherData['weather'][0]['id']);
        weatherMessage = weather.getMessage(temperature);
        cityName = weatherData['name'];
      }
    });
  }

  @override
  void initState() {
    super.initState();
    updateUI(widget.weatherData);
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: 'Clima',
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/location_background.jpeg',
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.8),
              BlendMode.dstATop,
            ),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () async {
                      updateUI(await weather.getLocationWeather());
                    },
                    child: Icon(
                      Icons.near_me,
                      size: 50.0,
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                      String typedName =
                          await Navigator.pushNamed(context, '/_007clima/city')
                              as String;
                      if (typedName.isNotEmpty) {
                        updateUI(await weather.getCityWeather(typedName));
                      }
                    },
                    child: Icon(
                      Icons.location_city,
                      size: 50.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text(
                      '$temperature°',
                      style: TextStyle(
                        fontSize: 100.0,
                      ),
                    ),
                    Text(
                      weatherIcon,
                      style: TextStyle(
                        fontSize: 100.0,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Text(
                  '$weatherMessage in $cityName',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 60.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
