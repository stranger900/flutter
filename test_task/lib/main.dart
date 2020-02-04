import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        
        body: TestTask(),
      ),
    ),
  );
}

class TestTask extends StatefulWidget {
  @override
  _TestTaskState createState() => _TestTaskState();
}

class _TestTaskState extends State<TestTask> {



  List<Color> colosrsOfScreen = [
    Colors.teal, Colors.white, Colors.yellow,
    Colors.red, Colors.blue, Colors.amber,
    Colors.greenAccent, Colors.orange, Colors.cyanAccent,
    Colors.cyan, Colors.green, Colors.grey
  ];

  Color changeColor(){

    int selectedColor = Random().nextInt(colosrsOfScreen.length);
    return colosrsOfScreen[selectedColor];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: FlatButton(
        color: changeColor(),
        onPressed: (){
          setState(() {
            //changeColor();
          });

        },
        child: Text('Hey there',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
      ),
    );
  }
}
