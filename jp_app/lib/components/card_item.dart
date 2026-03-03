// ignore_for_file: must_be_immutable

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  String? image;
  final Color color;
  final String sound;
  final String jpName;
  final String enName;
  final player = AudioPlayer();
  CardItem(
      {Key? key,
      this.image,
      required this.color,
      required this.sound,
      required this.jpName,
      required this.enName})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 5,
      margin: EdgeInsets.all(5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          image != null
              ? Container(
                  height: 100,
                  width: 100,
                  color: Colors.white,
                  child: Image.asset(
                    image!,
                    fit: BoxFit.contain,
                  ),
                )
              : SizedBox.shrink(),
          SizedBox(width: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    jpName,
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    enName,
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          IconButton(
            splashColor: Colors.black,
            onPressed: () async {
              await player.play(
                AssetSource(
                  sound,
                ),
              );
            },
            icon: Icon(Icons.play_arrow),
          ),
        ],
      ),
    );
  }
}
