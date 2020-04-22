import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Center(child: MainLayout()),
          ),
        ),
      ),
    );
  }
}

class MainLayout extends StatelessWidget {

  void playSound(int n) {
    final player = AudioCache();
    player.play('note$n.wav');
  }

  Expanded makeKey(int n, Color c) {
    return Expanded(
      child: FlatButton(
        color: c,
        onPressed: () {
          playSound(n);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        makeKey(1, Colors.deepPurpleAccent),
        makeKey(2, Colors.blue),
        makeKey(3, Colors.lightBlue),
        makeKey(4, Colors.green),
        makeKey(5, Colors.yellow),
        makeKey(6, Colors.orange),
        makeKey(7, Colors.red),
      ],
    );
  }
}
