import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReusableIcon extends StatelessWidget {

    final IconData icon;
    final String label;

  ReusableIcon({@required this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Icon(icon, size: 80,color: Colors.white),
      SizedBox(height: 15.0,),
      Text(label,style: TextStyle(fontSize: 18.0, color: Color(0xff8d8e98)),)
    ],mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
