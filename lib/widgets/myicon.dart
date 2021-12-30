// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  MyIcon({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 100.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          label,
        ),
      ],
    );
  }
}
