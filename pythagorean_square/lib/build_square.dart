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

        ],
      ),
    );
  }
}







