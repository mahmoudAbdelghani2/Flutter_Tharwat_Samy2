import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:toku/components/card_item.dart';
import 'package:toku/models/phrases_model.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({Key? key}) : super(key: key);
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pharases"),
        backgroundColor: const Color.fromARGB(255, 111, 69, 54),
      ),
      body: ListView.builder(
        itemCount: Phrase.phrases.length,
        itemBuilder: (context, index) {
          return CardItem(
              color: const Color.fromARGB(255, 81, 166, 190),
              sound: Phrase.phrases[index].sound,
              jpName: Phrase.phrases[index].jpName,
              enName: Phrase.phrases[index].enName);
        },
      ),
    );
  }
}
