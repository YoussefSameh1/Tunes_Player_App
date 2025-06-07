import 'package:flutter/material.dart';
import 'package:tunes_player_app/components/color_item.dart';
import 'package:tunes_player_app/models/color.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  final List<ColorModel> colors = const [
    ColorModel(color: Colors.red, sound: 'note1.wav'),
    ColorModel(color: Colors.orange, sound: 'note2.wav'),
    ColorModel(color: Colors.yellow, sound: 'note3.wav'),
    ColorModel(color: Colors.greenAccent, sound: 'note4.wav'),
    ColorModel(color: Colors.green, sound: 'note5.wav'),
    ColorModel(color: Colors.blueAccent, sound: 'note6.wav'),
    ColorModel(color: Colors.purple, sound: 'note7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff253238),
        title: const Text(
          'Flutter Tune',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
          children: colors.map((e) => ColorItem(colorModel: e)).toList())
    );
  }
}
