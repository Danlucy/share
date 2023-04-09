import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final play = AudioPlayer();
    play.play(
      AssetSource("note$soundNumber.wav"),
    );
  }

  Expanded tiles({required int type, required String memeName}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          onPressed: () {
            playSound(type);
          },
          style: TextButton.styleFrom(
            shape:
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            backgroundColor: Colors.teal,
          ),
          child: ListTile(
              leading: Text(
            memeName,
            style: const TextStyle(fontSize: 25),
          )),
        ),
      ),
    );
  }

  const XylophoneApp({super.key});
  tile() {}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              tiles(type: 8, memeName: 'FBI'),
              tiles(type: 9, memeName: 'AMONG US'),
              tiles(type: 10, memeName: 'Why are you-'),
              tiles(type: 11, memeName: 'What the dog')
            ],
          ),
        ),
      ),
    );
  }
}
