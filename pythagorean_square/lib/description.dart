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
  int secondWorkNumber;
  int thirdWorkNumber;
  int fourthWorkNumber;
  int sum=0;
  List<int> numbers = [];


  List<int> days(){

    int sDay8 = int.parse(dat[8]); //15 => 1

    for(int i =0; i<10; i++){
      if (i == 4 || i==7) {
        continue;
      }else{
        numbers.add(int.parse(dat[i]));
        sum+=(int.parse(dat[i]));
      }
    }

    firstWorkNumber = sum; // sYear0 + sYear1 + sYear2 + sYear3 + sMonth5 + sMonth6 + sDay8 + sDay9;
    secondWorkNumber = ((firstWorkNumber.toDouble())%10 + firstWorkNumber/10).toInt();
    thirdWorkNumber = (firstWorkNumber - sDay8*2);
    fourthWorkNumber = ((thirdWorkNumber.toDouble())%10 + thirdWorkNumber.toDouble()/10).toInt();

    numbers.add((firstWorkNumber/10).toInt());
    numbers.add(((firstWorkNumber.toDouble())%10).toInt());
    numbers.add(secondWorkNumber);
    numbers.add((thirdWorkNumber/10).toInt());
    numbers.add(((thirdWorkNumber.toDouble())%10).toInt());
    numbers.add(fourthWorkNumber);

    return numbers;
  }

//  String resultOfSquare1;
//  String resultOfSquare2;
//  String resultOfSquare3;
//  String resultOfSquare4;
//  String resultOfSquare5;
//  String resultOfSquare6;
//  String resultOfSquare7;
//  String resultOfSquare8;
//  String resultOfSquare9;


 List<String> resultOfSquare=[];

  List<String> calculateNumbers(){
    String sumNumber="";
    int count=0;
    for(int i=1; i<=9; i++){
      for(int j=0; j<numbers.length; j++){
        if(numbers[j]==i){
          count++;
          sumNumber=sumNumber+i.toString();
        }
      }
      resultOfSquare.add(sumNumber);
      sumNumber="";
    }
    return resultOfSquare;
  }

}