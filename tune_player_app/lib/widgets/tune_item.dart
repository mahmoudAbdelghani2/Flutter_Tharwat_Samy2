import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({Key? key, required this.sound, required this.color})
      : super(key: key);
  final String sound;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () async {
          final player = AudioPlayer();
          await player.play(
            AssetSource(
              sound,
            ),
          );
        },
        child: Container(
          width: double.infinity,
          color: color,
        ),
      ),
    );
  }
}
