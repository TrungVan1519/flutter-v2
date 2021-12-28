import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CircleAvatar(
          radius: 50.0,
          backgroundImage: AssetImage(
            'images/vi.jpeg',
          ),
        ),
        const Text(
          'Violet',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Pacifico',
            letterSpacing: 1.0,
          ),
        ),
        const SizedBox(
          width: 200.0,
          height: 10.0,
          child: Divider(
            color: Colors.white,
            height: 10.0,
            thickness: 1.0,
          ),
        ),
        const Card(
          color: Colors.white,
          margin: EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 25.0,
          ),
          child: ListTile(
            leading: Icon(
              Icons.phone,
              color: Colors.pink,
              size: 20.0,
            ),
            title: Text(
              '+01 2345 6789',
              style: TextStyle(
                color: Colors.pink,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Card(
          color: Colors.white,
          margin: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 25.0,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: const [
                Icon(
                  Icons.email,
                  color: Colors.pink,
                  size: 20.0,
                ),
                SizedBox(
                  width: 40.0,
                ),
                Text(
                  'vi@zaun.com',
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          color: Colors.white,
          margin: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 25.0,
          ),
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: const [
              Icon(
                Icons.home,
                color: Colors.pink,
                size: 20.0,
              ),
              SizedBox(
                width: 40.0,
              ),
              Text(
                'Zaun',
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          margin: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 25.0,
          ),
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: const [
              Icon(
                Icons.male,
                color: Colors.pink,
                size: 20.0,
              ),
              Icon(
                Icons.female,
                color: Colors.pink,
                size: 20.0,
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                'Less',
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
