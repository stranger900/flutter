import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound (int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
            Container(
              width: double.infinity,
              child: FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    playSound(1);
                  }),
            ),
            Container(
              width: double.infinity,
              child: FlatButton(
                  color: Colors.orange,
                  onPressed: () {
                    playSound(2);
                  }),
            ),
            Container(
              width: double.infinity,
              child: FlatButton(
                  color: Colors.yellow,
                  onPressed: () {
                    playSound(3);
                  }),
            ),
            Container(
              width: double.infinity,
              child: FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    playSound(4);
                  }),
            ),
            Container(
              width: double.infinity,
              child: FlatButton(
                  color: Colors.teal,
                  onPressed: () {
                    playSound(5);
                  }),
            ),
            Container(
              width: double.infinity,
              child: FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    playSound(6);
                  }),
            ),
            Container(
              width: double.infinity,
              child: FlatButton(
                  color: Colors.purple,
                  onPressed: () {
                    playSound(7);
                  }),
            ),

          ]),
        ),
      ),
    );
  }
}
