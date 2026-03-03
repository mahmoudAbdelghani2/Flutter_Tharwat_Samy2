import 'package:flutter/material.dart';
import 'package:toku/components/card_item.dart';
import 'package:toku/models/colors_model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Colors",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        backgroundColor: const Color.fromARGB(255, 111, 69, 54),
      ),
      body: ListView.builder(
        itemCount: ColorModel.colors.length,
        itemBuilder: (context, index) {
          return CardItem(
              color: const Color.fromARGB(255, 111, 68, 186),
              image: ColorModel.colors[index].image,
              sound: ColorModel.colors[index].sound,
              jpName: ColorModel.colors[index].jpName,
              enName: ColorModel.colors[index].enName);
        },
      ),
    );
  }
}
