// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TuneModel {
  Color color;
  String sound;
  TuneModel({required this.color, required this.sound});

  static final List<TuneModel> tuneItems = [
    TuneModel(color: Color(0XFFFE4039), sound: "note1.wav"),
    TuneModel(color: Color(0XFFFD982B), sound: "note2.wav"),
    TuneModel(color: Color(0XFFFDEB57), sound: "note3.wav"),
    TuneModel(color: Color(0XFF30AE56), sound: "note4.wav"),
    TuneModel(color: Color(0XFF009587), sound: "note5.wav"),
    TuneModel(color: Color(0XFF0097ED), sound: "note6.wav"),
    TuneModel(color: Color(0XFFA127AC), sound: "note7.wav"),
  ];
}
