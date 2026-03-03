import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String text;
  final Color color;
  final Function() onTap;
  const Category(
      {Key? key, required this.text, required this.color, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.all(15),
        height: 100,
        width: double.infinity,
        color: color,
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
    );
  }
}
