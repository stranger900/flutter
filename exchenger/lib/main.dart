import 'package:flutter/material.dart';

void main() => runApp(ExchengeTracker());

class ExchengeTracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Awesome Exchenger',
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: Text('HI!'),
    );
  }

}

