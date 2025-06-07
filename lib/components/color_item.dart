import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:tunes_player_app/models/color.dart';

// ignore: must_be_immutable
class ColorItem extends StatelessWidget {
  ColorItem({super.key, required this.colorModel});

  ColorModel colorModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          final player = AudioPlayer();
          player.play(AssetSource(colorModel.sound));
        },
        child: Container(
          color: colorModel.color,
          width: double.infinity,
        ),
      ),
    );
  }
}
