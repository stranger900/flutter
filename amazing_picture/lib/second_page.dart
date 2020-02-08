import 'package:flutter/material.dart';
import './network.dart';

class SecondPage extends StatelessWidget {

 Picture picture;
 SecondPage(this.picture);
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Amazing picture'),),
      body:

      Container(
        width: double.infinity,
        height: double.infinity,
        child: Image.network(picture.full)
        ),
      );

  }
}
