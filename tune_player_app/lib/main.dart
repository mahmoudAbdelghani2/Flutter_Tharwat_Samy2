// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/views/tune_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TunePage(),
    );
  }
}
