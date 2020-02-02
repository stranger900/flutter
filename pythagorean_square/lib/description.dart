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

class Brain{
  String dat = date.toString();
  int firstWorkNumber;
  double secondWorkNumber;
  int thitrdWorkNumber;

  void days(){
    int sDay9 = int.parse(dat[9]); //15 => 5
    int sDay8 = int.parse(dat[8]); //15 => 1

    int sMonth6 = int.parse(dat[6]); //07 => 7
    int sMonth5 = int.parse(dat[5]); //07 => 0

    int sYear3 = int.parse(dat[3]); //2019 => 9
    int sYear2 = int.parse(dat[2]); //2019 => 1
    int sYear1 = int.parse(dat[1]); //2019 => 0
    int sYear0 = int.parse(dat[0]); //2019 => 2

    firstWorkNumber = sYear0 + sYear1 + sYear2 + sYear3 + sMonth5 + sMonth6 + sDay8 + sDay9;
    secondWorkNumber = (firstWorkNumber.toDouble())%10 + firstWorkNumber.toDouble()/10;
    
  }


}