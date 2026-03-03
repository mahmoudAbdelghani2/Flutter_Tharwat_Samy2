import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/family_page.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffef6db),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 111, 69, 54),
        title: Text(
          "Toku",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: Column(
        children: [
          Category(
            text: "Numbers",
            color: const Color(0xffef9235),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NumbersPage()));
            },
          ),
          Category(
            text: "Family Members",
            color: Colors.green,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FamilyMembersPage()));
            },
          ),
          Category(
            text: "Colors",
            color: const Color.fromARGB(255, 111, 68, 186),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ColorsPage()));
            },
          ),
          Category(
            text: "Phrases",
            color: const Color.fromARGB(255, 81, 166, 190),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PhrasesPage()));
            },
          ),
        ],
      ),
    );
  }
}
