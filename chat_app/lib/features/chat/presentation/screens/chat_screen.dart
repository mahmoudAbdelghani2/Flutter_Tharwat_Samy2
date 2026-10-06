import 'package:chat_app/core/consts/app_consts.dart';
import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Map<String, dynamic>> _messages = [
    {'text': "Hello, how are you?", 'isSender': false},
    {'text': "I'm good, thanks! How about you?", 'isSender': true},
  ];

  void _sendMessage(String text) {
    if (text.trim().isEmpty) return;
    setState(() {
      _messages.add({'text': text, 'isSender': true});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConsts.primaryBackgroundColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage(AppConsts.scholarImagePath),
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
      body: Stack(
        children: [
          ListView.builder(
            padding: const EdgeInsets.only(top: 12, bottom: 80),
            itemCount: _messages.length,
            itemBuilder: (context, index) {
              final msg = _messages[index];
              return BubbleSpecialThree(
                text: msg['text'],
                color: msg['isSender']
                    ? const Color(0xFF1B97F3)
                    : const Color(0xFFE8E8EE),
                tail: true,
                isSender: msg['isSender'],
                textStyle: TextStyle(
                  color: msg['isSender'] ? Colors.white : Colors.black87,
                  fontSize: 16,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
