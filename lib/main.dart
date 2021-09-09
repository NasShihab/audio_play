import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playsound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded Bulkey({Color color, int soundNumber}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(soundNumber);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Bulkey(color: Colors.red, soundNumber: 1),
              Bulkey(color: Colors.orange, soundNumber: 2),
              Bulkey(color: Colors.yellowAccent, soundNumber: 3),
              Bulkey(color: Colors.blueGrey, soundNumber: 4),
              Bulkey(color: Colors.green, soundNumber: 5),
              Bulkey(color: Colors.blue, soundNumber: 6),
              Bulkey(color: Colors.amber, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
