import 'package:flutter/material.dart';

class Description extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pythagorean Square'),),
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
