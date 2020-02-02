import 'package:flutter/material.dart';
import 'package:pythagorean_square/constants.dart';

class Description extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Pythagorean Square'),),
      body: Column(
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              MyConteiner('1').conteiners(),
              MyConteiner('2').conteiners(),
              MyConteiner('3').conteiners(),
          ],
          ),
          SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              MyConteiner('1').conteiners(),
              MyConteiner('2').conteiners(),
              MyConteiner('3').conteiners(),
            ],
          ),
          SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              MyConteiner('1').conteiners(),
              MyConteiner('2').conteiners(),
              MyConteiner('3').conteiners(),
            ],
          ),
        ],
      ),
    );
  }
}

class MyConteiner {
  String numberConteiner;
  MyConteiner(this.numberConteiner);
  Widget conteiners() {
    return Container(
      child: Center(child: Text(numberConteiner)),
      decoration: BoxDecoration(border: Border.all(color: Colors.teal)),
      height: 100,
      width: 100,
    );

  }
}



Map<int, String> description = {
  //Квадрат 1. Характер
  1: 'егоїст',
  11: 'людина егоїстичний, але іноді може подумати про інших',
  111: 'людина з позитивним стійким характером',
  1111: 'характер дуже вольовий і сильний',

};

var m = date;