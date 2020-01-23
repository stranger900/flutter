import 'package:flutter/material.dart';
import 'reusablecard.dart';

const bottomConteinerHeight = 80.0;

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
              Expanded(child: ReusebleCard(colour: Color(0xff065001),)),
              Expanded(child: ReusebleCard(colour: Color(0xff065001))),
              ],
            ),
          ),
          Expanded(child: ReusebleCard(colour: Color(0xff065001))
          ),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: ReusebleCard(colour: Color(0xff065001))),
              Expanded(child: ReusebleCard(colour: Color(0xff065001))),
            ],
          ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomConteinerHeight,
            color: Color(0xff0AF577),
          ),
      ],

    ),
    );
  }
}
