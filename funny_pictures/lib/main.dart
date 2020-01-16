import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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

        ),
        backgroundColor: Colors.deepOrangeAccent[100],
        body: RefreshPicture(),
        //Image(image: NetworkImage('http://junglebiscuit.com/images/random/rand_image.pl')),
      ),
    );
  }
}

class RefreshPicture extends StatefulWidget {
  @override
  _RefreshPictureState createState() => _RefreshPictureState();
}

class _RefreshPictureState extends State<RefreshPicture> {

  String url = 'http://junglebiscuit.com/images/random/rand_image.pl';
  Future<http.Response> fetchPost() {
    return http.get(url);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: FlatButton(
          onPressed: () {
            setState(() {
              fetchPost();
              print(url);
            });
          },
          child: Image(image: NetworkImage('http://junglebiscuit.com/images/random/rand_image.pl')),
      ),
    );
  }
}
