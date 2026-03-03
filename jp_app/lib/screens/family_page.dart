import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/components/card_item.dart';
import 'package:toku/models/family_members_model.dart';

class FamilyMembersPage extends StatelessWidget {
  FamilyMembersPage({Key? key}) : super(key: key);
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Family Members",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        backgroundColor: const Color.fromARGB(255, 111, 69, 54),
      ),
      body: ListView.builder(
        itemCount: FamilyMember.members.length,
        itemBuilder: (context, index) {
          return CardItem(
              color: Colors.green,
              image: FamilyMember.members[index].image,
              sound: FamilyMember.members[index].sound,
              jpName: FamilyMember.members[index].jpName,
              enName: FamilyMember.members[index].enName);
        },
      ),
    );
  }
}
