import 'package:flutter/material.dart';
import 'constants.dart';


class ReusableIcon extends StatelessWidget {

    final IconData icon;
    final String label;

  ReusableIcon({@required this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Icon(icon, size: 80,color: Colors.white),
      SizedBox(height: 15.0,),
      Text(label,style: kLabelTextStyle,)
    ],mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
