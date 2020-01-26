import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {

  final Function onTap;
  final String buttonTitle;

  BottomButton({@required this.onTap,@required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 10.0),
        child: Center(child: Text(buttonTitle, style: kLargeButtonTextStyle,),),
        margin: EdgeInsets.only(top: 10,left: 15,right: 15),
        width: double.infinity,
        height: kBottomConteinerHeight,
        color: kBottomConteinerColour,
      ),
    );
  }
}


