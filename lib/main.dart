import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  void playSound(int soundIndex) {
    final player = AudioCache();
    player.play('note$soundIndex.wav');
  }

  Expanded buildKey(Color color, Color accent, int index) {
    return Expanded(
      child: FlatButton(
        color: color,
        splashColor: accent,
        onPressed: () {
          playSound(index);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildKey(Colors.red, Colors.redAccent, 1),
                  buildKey(Colors.orange, Colors.orangeAccent, 2),
                  buildKey(Colors.yellow, Colors.yellowAccent, 3),
                  buildKey(Colors.green, Colors.greenAccent, 4),
                  buildKey(Colors.blue, Colors.blueAccent, 5),
                  buildKey(Colors.indigo, Colors.indigoAccent, 6),
                  buildKey(Colors.purple, Colors.purpleAccent, 7),
                ]),
          ),
        ),
      ),
    );
  }
}
