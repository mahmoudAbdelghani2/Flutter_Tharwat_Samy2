import 'package:chat_app/core/consts/app_consts.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConsts.primaryBackgroundColor,
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [Text('Sign Up Screen', style: TextStyle(fontSize: 24))],
          ),
        ),
      ),
    );
  }
}
