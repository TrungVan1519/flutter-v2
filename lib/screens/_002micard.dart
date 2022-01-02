// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../widgets/myscaffold.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: 'Mi Card',
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage(
              'images/vi.jpeg',
            ),
          ),
          Text(
            'Violet',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 200.0,
            height: 10.0,
            child: Divider(
              color: Colors.white,
              height: 10.0,
              thickness: 1.0,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.pink,
              ),
              title: Text(
                '+01 2345 6789',
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Text(
                    'vi@zaun.com',
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 25.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: [
                Icon(
                  Icons.home,
                ),
                SizedBox(
                  width: 40.0,
                ),
                Text(
                  'Zaun',
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 25.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: [
                Icon(
                  Icons.male,
                ),
                Icon(
                  Icons.female,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Less',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
