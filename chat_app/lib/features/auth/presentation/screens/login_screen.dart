import 'package:chat_app/core/widgets/custom_button_widget.dart';
import 'package:chat_app/core/widgets/custom_text_fieldWidget.dart';
import 'package:chat_app/features/auth/presentation/widgets/rich_text_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2B475E),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/scholar.png',
                  width: 100,
                  height: 100,
                ),
                // const SizedBox(height: 12),
                Text(
                  'Scholar Chat',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'pacifico',
                  ),
                ),
                const SizedBox(height: 12),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                CustomTextFieldWidget(hintText: 'Email'),
                const SizedBox(height: 12),
                CustomTextFieldWidget(hintText: 'Password'),
                const SizedBox(height: 40),
                CustomButtonWidget(onPressed: () {}, text: 'Login'),
                const SizedBox(height: 12),
                RichTextWidget(
                  onTap: () {},
                  mainText: 'Don\'t have an account?',
                  linkText: 'Register',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
