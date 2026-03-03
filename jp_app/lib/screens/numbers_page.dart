import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/components/card_item.dart';
import 'package:toku/models/numbers_model.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({Key? key}) : super(key: key);
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 111, 69, 54),
        title: Text(
          "Numbers",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: ListView.builder(
        itemCount: Number.nums.length,
        itemBuilder: (context, index) {
          return CardItem(
              color: const Color(0xffef9235),
              image: Number.nums[index].image,
              sound: Number.nums[index].sound,
              jpName: Number.nums[index].jpName,
              enName: Number.nums[index].enName);
        },
      ),
    );
  }
}
