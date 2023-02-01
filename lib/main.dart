import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber){
    final player = AudioPlayer ();
    player.play(AssetSource('note$soundNumber.wav'));
  }
  Expanded buildKey({int soundNumber, Color  colorKey}){
    return  Expanded(
      child: TextButton(
          onPressed:  ()  {
            playSound(soundNumber);
          },
          style : TextButton.styleFrom(
              backgroundColor: colorKey
          )
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(             
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(soundNumber:1,colorKey:Colors.red),
                buildKey(soundNumber:2,colorKey:Colors.deepPurple),
                buildKey(soundNumber:3,colorKey:Colors.green),
                buildKey(soundNumber:4,colorKey:Colors.yellowAccent),
                buildKey(soundNumber:5,colorKey:Colors.redAccent),
                buildKey(soundNumber:6,colorKey:Colors.teal),
                buildKey(soundNumber:7,colorKey:Colors.deepOrange),
                ],
            ),
          ),
        ),
      ),
    );
  }
}
