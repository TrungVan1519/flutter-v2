import 'package:flutter/material.dart';
// import 'activities/_001Iamrich.dart';
import 'activities/_002micard.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          backgroundColor: Colors.pink[800],
          title: const Text(
            'Flutter app',
          ),
        ),
        body: const SafeArea(
          child: MyApp(),
        ),
      ),
    ),
  );
}
