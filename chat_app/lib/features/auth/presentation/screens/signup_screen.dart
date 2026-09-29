import 'package:chat_app/core/consts/app_consts.dart';
import 'package:chat_app/core/widgets/custom_button_widget.dart';
import 'package:chat_app/core/widgets/custom_text_fieldWidget.dart';
import 'package:chat_app/features/auth/presentation/widgets/rich_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConsts.primaryBackgroundColor,
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
                const SizedBox(height: 70),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                CustomTextFieldWidget(hintText: 'First Name'),
                const SizedBox(height: 12),
                CustomTextFieldWidget(hintText: 'Last Name'),
                const SizedBox(height: 12),
                CustomTextFieldWidget(hintText: 'Email'),
                const SizedBox(height: 12),
                CustomTextFieldWidget(hintText: 'Password'),
                const SizedBox(height: 40),
                CustomButtonWidget(onPressed: () {}, text: 'Sign Up'),
                const SizedBox(height: 12),
                RichTextWidget(
                  onTap: () {
                    GoRouter.of(context).pushReplacement(AppConsts.loginPath);
                  },
                  mainText: 'Have an account?',
                  linkText: 'Login',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
