import 'package:flutter/material.dart';
import './description.dart';

class MyConteiners extends StatelessWidget {
  int numberConteiner;
  MyConteiners(this.numberConteiner);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Description(numberConteiner)),
          );
        },
          child: Center(child: Text(numberConteiner.toString()))),
      decoration: BoxDecoration(border: Border.all(color: Colors.teal)),
      height: 100,
      width: 100,
    );
  }
}


//class MyConteiners {
//  String numberConteiner;
//  MyConteiners(this.numberConteiner);
//  Widget conteiners() {
//    return Container(
//      child: Center(child: Text(numberConteiner)),
//      decoration: BoxDecoration(border: Border.all(color: Colors.teal)),
//      height: 100,
//      width: 100,
//    );
//
//  }
//}