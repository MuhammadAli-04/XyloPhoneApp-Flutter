import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  Widget createWidget(Color color, int number){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        onPressed: (){
          Audio audio = Audio.load('assets/note$number.wav');
          audio.play();
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title:const Text('Xylophone App'),
          ),
          body: Column(
            children: [
              createWidget(Colors.red, 1),
              createWidget(Colors.orange, 2),
              createWidget(Colors.yellow, 3),
              createWidget(Colors.green, 4),
              createWidget(Colors.lightGreen, 5),
              createWidget(Colors.blue, 6),
              createWidget(Colors.indigo, 7),
            ],
          ),
        ),
      ),
    );
  }
}