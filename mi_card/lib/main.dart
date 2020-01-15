import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('images/photo.png'),
                  radius: 50,
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
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  //padding: EdgeInsets.all(10),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal[900],
                      size: 50,
                    ),
                    title: Text(
                      '+38 099 123 4567',
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
                      size: 50,

                    ),
                    title: Text(
                      'a900@i.ua',
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

