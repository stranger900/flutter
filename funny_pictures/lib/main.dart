import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Funny pictures'),
          backgroundColor: Colors.deepOrange[400],
        ),
        backgroundColor: Colors.deepOrangeAccent[100],
        body: Image(image: NetworkImage('http://junglebiscuit.com/images/random/rand_image.pl')),
      ),
    );
  }
}
