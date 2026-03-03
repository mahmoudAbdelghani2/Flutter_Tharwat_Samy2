// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/models/tune_model.dart';
import 'package:music_notes_player_app_setup/widgets/tune_item.dart';

class TunePage extends StatelessWidget {
  const TunePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Tune"),
        backgroundColor: Color(0XFF243139),
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: TuneModel.tuneItems
            .map((e) => TuneItem(sound: e.sound, color: e.color))
            .toList(),
      ),
    );
  }
}
