import 'package:chat_app/core/consts/app_consts.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConsts.primaryBackgroundColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/images/scholar.png'),
              width: 50,
              height: 50,
            ),
            const Text(
              'Chat',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'pacifico',
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: const Center(child: Text('Welcome to the Chat Screen!')),
    );
  }
}
