import 'package:flutter/material.dart';
import './refresh.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Funny pictures'),
          backgroundColor: Colors.deepOrange[400],
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
              tooltip: 'Refresh',
              onPressed:
              setState(() {});,
            )
          ],
        ),
        backgroundColor: Colors.deepOrangeAccent[100],
        body: Image(image: NetworkImage('http://junglebiscuit.com/images/random/rand_image.pl')),
      ),
    );
  }
}

