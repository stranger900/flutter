import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RefreshApp extends StatefulWidget {
  @override
  _RefreshAppState createState() => _RefreshAppState();
}

class _RefreshAppState extends State<RefreshApp> {

  _refreshAction() {
    setState(() {
      var response = http.read('http://junglebiscuit.com/images/random/rand_image.pl');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Container(
          child: FloatingActionButton(
              tooltip: 'Refresh',
              child: Icon(Icons.refresh),
              onPressed: () => _refreshAction()
          ),
        ),

      );
    }
}
