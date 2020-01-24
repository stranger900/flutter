import 'package:flutter/material.dart';

class ReusebleCard extends StatelessWidget {

  final Color colour;
  final cardChild;

  ReusebleCard({@required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
    );
  }
}
