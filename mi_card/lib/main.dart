import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [

                Colors.teal[300],
                //Colors.teal[400],
                //Colors.teal[500],
                Colors.teal[600],
                //Colors.teal[700],
                //Colors.teal[800],
                Colors.teal[900],

              ]
            ),
          ),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('images/photo.png'),
                  radius: 60,
                ),
                Text(
                  'Андрій',
                  style: TextStyle(
                      fontFamily: 'Lobster',
                      fontSize: 30,
                      color: Colors.white,
                  ),
                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    color: Colors.teal.shade100,
                    fontSize: 10,
                    fontFamily: 'SourceSansPro',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,
                  ),
                ),
                SizedBox(
                  height: 15,
                  width: 200,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  //padding: EdgeInsets.all(10),
                  child: ListTile(
                    leading: Icon(
                      Icons.smartphone,
                      color: Colors.teal[900],
                      size: 30,
                    ),
                    title: Text(
                      '+38 066 676 1234',
                      style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 20.0,
                          color: Colors.teal[900]
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  //padding: EdgeInsets.all(10),
                  child: ListTile(
                    leading: Icon(Icons.mail,
                      color: Colors.teal[900],
                      size: 30,

                    ),
                    title: Text(
                      'petryshyn.andriy@ukr.net',
                      style: TextStyle(
                        color: Colors.teal[900],
                        fontSize: 20,
                        fontFamily: 'SourceSansPro',

                      ),
                    ),
                  ),
                ),
              ],
            ),
        ),

      ),
    );
  }
}

