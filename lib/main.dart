import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  // ignore: non_constant_identifier_names
  Expanded BuildKey({Color color, int sno}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: ()
        {
          final player = AudioCache();
          player.play('note$sno.wav');
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              BuildKey(color:Colors.red, sno:1),
              BuildKey(color:Colors.orange, sno:2),
              BuildKey(color:Colors.yellow, sno:3),
              BuildKey(color:Colors.green, sno:4),
              BuildKey(color:Colors.blue, sno:5),
              BuildKey(color:Colors.indigo, sno:6),
              BuildKey(color:Colors.purple, sno:7),

            ],
          )

        ),
      ),
    );
  }
}

