// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  final String title;
  final Widget? child;
  final Widget? body;

  MyScaffold({required this.title, this.child, this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
        ),
      ),
      body: body ??
          SafeArea(
            child: child!,
          ),
    );
  }
}
