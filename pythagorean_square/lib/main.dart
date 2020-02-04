import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';
import 'package:pythagorean_square/constants.dart';
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



  DateTime getDate(){
    return date;
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(title: Text('Квадрат Піфагора'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Image.asset('image.jpg',
              width: double.maxFinite,
            ),
          ),

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
                 child: Container(
                   height: 80,
                   width: double.infinity,
                   child: FlatButton(
                     color: Colors.teal,
                    child: Text(
                      "Введіть дату народження",
                      style: textStyle,
                    ),

                    onPressed: () {
                      showModalBottomSheet(
                      context: context,
                      builder: (BuildContext builder) {
                        return Container(

                          height: MediaQuery.of(context).copyWith().size.height / 3,
                          child: CupertinoDatePicker(
                            initialDateTime: date,
                            mode: CupertinoDatePickerMode.date,
                            minimumYear: 1900,
                            maximumYear: 2030,
                            onDateTimeChanged: (myDate) {
                              setState(() {
                                date = myDate;
                              });

                              print(date);
                              print(Brain().days());
                              print(Brain().calculateNumbers());
                              print(DateFormat.yMMMMd().format(date));
                              },
                          ),
                        );

                    });
                    },
              ),
                 ),
               ),

              Expanded(child: Center(child: Text(DateFormat.yMMMMd().format(date),style: textStyle,),)),

          Expanded(
                child: Container(
                  color: Colors.teal,
                  height: 80,
                  width: double.infinity,
                  child: FlatButton(
                    //color: Colors.red,
                    child: Text(
                      "РОЗРАХУВАТИ",
                      style: textStyle,
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
