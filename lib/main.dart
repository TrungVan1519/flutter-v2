import 'package:flutter/material.dart';

// import 'activities/_001Iamrich.dart';
// import 'activities/_002micard.dart';
// import 'activities/_003dicee.dart';
// import 'activities/_004xylophone.dart';
import 'activities/_005quizzler.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink[300],
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
