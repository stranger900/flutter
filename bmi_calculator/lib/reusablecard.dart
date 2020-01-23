import 'package:flutter/material.dart';

class ReusebleCard extends StatelessWidget {

  final Color colour;
  ReusebleCard({@required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
    );
  }
}
