import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            children: <Widget>[
              Container(
                color: Colors.red,
                width: 100,
                height: double.infinity,

                ),
              Expanded(child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.amberAccent,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.greenAccent,
                    ),
                  ],

                ),
              ),
              ),
              Container(
                color: Colors.blue,
                width: 100,
                height: double.infinity,

              ),
              
            ],
          ),
        ),


        ),
      );
  }
}

