// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../widgets/myscaffold.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: 'I am rich',
      child: Center(
        child: Image(
          image: AssetImage(
            'images/lol.jpeg',
          ),
        ),
      ),
    );
  }
}
