import 'package:flutter/material.dart';
import './brain.dart';
import './conteiner.dart';

class BuildSquare extends StatelessWidget {
  List<int> resultSquare = Brain().calculateNumbers();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Pythagorean Square'),),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text('Розрахунок',style: TextStyle(fontSize: 25.0),)],),
          SizedBox(height: 20.0,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              MyConteiners(resultSquare[0]),
              MyConteiners(resultSquare[1]),
              MyConteiners(resultSquare[2]),
          ],
          ),
          SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              MyConteiners(resultSquare[3]),
              MyConteiners(resultSquare[4]),
              MyConteiners(resultSquare[5]),
            ],
          ),
          SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              MyConteiners(resultSquare[6]),
              MyConteiners(resultSquare[7]),
              MyConteiners(resultSquare[8]),
            ],
          ),
          SizedBox(height: 20.0,),
          Text('Натисніть на квадрат щоб почитати детальніше'),
//          Text('цифр немає - це означає, що якість, за який вони відповідають, відсутній у людини'),
//
//          Text('одна цифра - якість дуже слабо розвинене, що говорить про необхідність розвивати його і вдосконалювати'),
//          Text('дві цифри - вважається, що якість дано в нормі, тобто воно розвинене, але не домінує над іншими, при бажанні можна зайнятися його вдосконаленням;'),
//          Text('три цифри - це особливий знак, людина включає це якість екстрено, випадково, раптом;'),
//          Text('чотири цифри - якість розвинене сильно;'),
//          Text('п\'ять цифр - якість розвинене максимально сильно - межа!'),
//          Text('шість і більше цифр - наступає перевантаження якості, коли воно починає змінюватися на протилежне, тобто з сильного перетворюється в слабке.'),
        ],
      ),
    );
  }
}







