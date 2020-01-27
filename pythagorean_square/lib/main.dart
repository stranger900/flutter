import 'package:flutter/material.dart';
import 'package:pythagorean_square/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:pythagorean_square/description.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData.dark(
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
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(flex: 1,child: Center(child: Text('Введіть свою дату народження:'))),
          SizedBox(height: 20,),
          /*
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
              //MaterialButton(
               Expanded(
                 flex: 1,
                 child: Container(
                   height: 60,
                   width: double.infinity,
                   child: FlatButton(
                     color: Colors.red,
                    child: Text(
                      "Введіть дату народження",
                      style: TextStyle(color: Colors.white),
                    ),

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
                              print(date[0]);
                              print(date[1]);
                              print(date[2]);
                              print(date[3]);
                              },
                          ),
                        );

                    });
                    },
              ),
                 ),
               ),
              Expanded(
                flex: 3,
                  child: Container(

              )),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.red,
                  height: 60,
                  width: double.infinity,
                  child: FlatButton(
                    //color: Colors.red,
                    child: Text(
                      "РОЗРАХУВАТИ",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Description()),
                    );}
                  ),
                ),
              ),
            ],
          ),

    );


  }
}
