import 'package:flutter/material.dart';
import 'reusablecard.dart';

const bottomConteinerHeight = 80.0;
const activeCardColour = Color(0xff065001);
const bottomConteinerColour = Color(0xff0AF577);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: ReusebleCard(colour: activeCardColour,)),
              Expanded(child: ReusebleCard(colour: activeCardColour)),
              ],
            ),
          ),
          Expanded(child: ReusebleCard(colour: activeCardColour)
          ),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: ReusebleCard(colour: activeCardColour)),
              Expanded(child: ReusebleCard(colour: activeCardColour)),
            ],
          ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomConteinerHeight,
            color: bottomConteinerColour,
          ),
      ],

    ),
    );
  }
}
