import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String mainText;
  final String linkText;
  const RichTextWidget({
    super.key,
    required this.onTap,
    required this.mainText,
    required this.linkText,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '$mainText ',
        style: TextStyle(color: Colors.white),
        children: [
          TextSpan(
            text: linkText,
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
