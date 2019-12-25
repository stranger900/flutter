import 'package:exchange_tracker/exchange_list.dart';
import 'package:flutter/material.dart';

void main() => runApp(ExchangeTracker());

class ExchangeTracker extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Awesome Exchanger',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ExchangeList(),
    );
  }

}