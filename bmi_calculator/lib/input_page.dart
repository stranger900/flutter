import 'package:bmi_calculator/reusableIcon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'reusablecard.dart';

const bottomConteinerHeight = 80.0;
const activeCardColour = Color(0xff1d1e33);
const inactiveCardColour = Color(0xff111328);
const bottomConteinerColour = Color(0xffeb1555);
enum Gender {male, female}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;

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
              Expanded(child: ReusebleCard(
                  onPressIcon: (){
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male ? activeCardColour : inactiveCardColour,cardChild:
              ReusableIcon(icon: FontAwesomeIcons.mars,label: 'MALE',)
              ),
              ),
              Expanded(child: ReusebleCard(
                onPressIcon: () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                colour: selectedGender == Gender.female ? activeCardColour : inactiveCardColour, cardChild:
              ReusableIcon(icon: FontAwesomeIcons.venus,label: 'FEMALE',),
                ),
              ),
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
