import 'package:flutter/material.dart';

class ReusebleCard extends StatelessWidget {

  final Color colour;
  final Widget cardChild;
  final Function onPressIcon;

  ReusebleCard({@required this.colour, this.cardChild, this.onPressIcon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressIcon,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
      ),
    );
  }
}
