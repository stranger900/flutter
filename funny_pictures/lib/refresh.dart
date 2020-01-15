import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RefreshApp extends StatefulWidget {
  @override
  RefreshAppState createState() => RefreshAppState();
}

class RefreshAppState extends State<RefreshApp> {
  var response;
  refreshAction() {
    setState(() {
      Widget MyWidget(){
        Image(image: NetworkImage('http://junglebiscuit.com/images/random/rand_image.pl'));
      }
      //var response = http.read('http://junglebiscuit.com/images/random/rand_image.pl');
    });
  }
  @override
  Widget build(BuildContext context) {
    return refreshAction();
    }
}
