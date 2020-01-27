import 'package:flutter/material.dart';
import 'package:pythagorean_square/constants.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
        scaffoldBackgroundColor: primaryColor,
        primaryColor: primaryColor,
        accentColor: Colors.green,
        textTheme: TextTheme(body1: TextStyle(color: Color(0xff121F01), fontSize: 22)),
      ),
      home: PythagoreanSquare(),
    );
  }
}

class PythagoreanSquare extends StatefulWidget {
  @override
  _PythagoreanSquareState createState() => _PythagoreanSquareState();
}

class _PythagoreanSquareState extends State<PythagoreanSquare> {

  String date;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pythagorean Square'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Введіть свою дату народження:'),
          Wrap(

            children: <Widget>[/*
              DropdownButton(
                focusColor: Color(0xff0BCD05),
                hint: Text('День'), // Not necessary for Option 1
                value: selectedDay,
                onChanged: (newValue) {
                  setState(() {
                    selectedDay = newValue;
                    print(selectedDay);
                  });
                },
                items: userDay.map((day) {
                  return DropdownMenuItem(
                    child: Text(day.toString()),
                    value: day,
                  );
                }).toList(),
              ),*/
              MaterialButton(
                child: Text(
                  "Cupertino date Picker",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.redAccent,
                onPressed: () {
                  showModalBottomSheet(
                  context: context,
                  builder: (BuildContext builder) {
                    return Container(

                      height: MediaQuery.of(context).copyWith().size.height / 3,
                      child: CupertinoDatePicker(

                        mode: CupertinoDatePickerMode.date,
                        minimumYear: 1900,
                        maximumYear: 2030,
                        onDateTimeChanged: (DateTime newdate) {
                          date = newdate.toString();
                          print(date);
                          },
                      ),
                    );

                });
                },
              ),
            ],
          )
        ],
      ),
    );

  }
}
