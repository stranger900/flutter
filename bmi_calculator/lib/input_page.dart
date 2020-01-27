import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/results_page.dart';
import 'package:bmi_calculator/reusableIcon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'reusablecard.dart';
import 'round_icon_button.dart';
import 'results_page.dart';
import 'bottom_button.dart';



enum Gender {male, female}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age =19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: ReusebleCard(
                  onPressIcon: (){
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male ? kActiveCardColour : kInactiveCardColour,cardChild:
              ReusableIcon(icon: FontAwesomeIcons.mars,label: 'MALE',)
              ),
              ),
              Expanded(child: ReusebleCard(
                onPressIcon: () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                colour: selectedGender == Gender.female ? kActiveCardColour : kInactiveCardColour, cardChild:
              ReusableIcon(icon: FontAwesomeIcons.venus,label: 'FEMALE',),
                ),
              ),
              ],
            ),
          ),
          Expanded(child: ReusebleCard(
              colour: kActiveCardColour,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('HEIGHT',style: kLabelTextStyle,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                  Text(height.toString(),style: kNumberTextStyle,),
                  Text('cm',style: kLabelTextStyle,)
                ],),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white,
                    thumbColor: kBottomConteinerColour,
                    overlayColor: Color(0x2908D0AE),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 25),
                  ),
                  child: Slider(
                      value: height.toDouble(),
                      onChanged: (double newValue){
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    min: 120.0,
                    max: 220.0,
                    inactiveColor: Color(0xff8d8e98),
                  ),
                ),
              ],
            ),
          ),
          ),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: ReusebleCard(
                  colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('WEIGHT', style: kLabelTextStyle,),
                    Text(weight.toString(),style: kNumberTextStyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RoundIconButton(icon: FontAwesomeIcons.plus,
                        onPressed: () {
                          setState(() {
                            weight++;
                          });
                        },),
                        SizedBox(
                          width: 20.0,
                        ),
                        RoundIconButton(icon: FontAwesomeIcons.minus,
                        onPressed: (){
                          setState(() {
                            weight--;
                          });
                        },),
                      ],
                    ),
                  ],
                ),
              ),
              ),
              Expanded(child: ReusebleCard(colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('AGE', style: kLabelTextStyle,),
                    Text(age.toString(),style: kNumberTextStyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RoundIconButton(icon: FontAwesomeIcons.plus,
                          onPressed: () {
                            setState(() {
                              age++;
                            });
                          },),
                        SizedBox(
                          width: 20.0,
                        ),
                        RoundIconButton(icon: FontAwesomeIcons.minus,
                          onPressed: (){
                            setState(() {
                              age--;
                            });
                          },),
                      ],
                    ),
                  ],
                ),
                ),
              ),
            ],
          ),
          ),
          BottomButton(
            onTap: (){
              CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);
              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage(
                bmiResult: calc.calculatorBMI(),
                resultText: calc.getResult(),
                interpretation: calc.getInterpretation(),
              )),);
            },
            buttonTitle: 'CALCULATE',
          ),
      ],

    ),
    );
  }
}

