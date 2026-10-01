// ignore_for_file: unused_field

import 'dart:developer';

import 'package:chat_app/core/consts/app_consts.dart';
import 'package:chat_app/core/consts/validators.dart';
import 'package:chat_app/core/widgets/custom_button_widget.dart';
import 'package:chat_app/core/widgets/custom_text_field_widget.dart';
import 'package:chat_app/features/auth/presentation/widgets/rich_text_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConsts.primaryBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Form(
              key: _formKey,
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
                  CustomTextFieldWidget(
                    validator: (value) => Validators.validateName(value),
                    hintText: 'Name',
                  ),
                  const SizedBox(height: 12),
                  CustomTextFieldWidget(
                    validator: (value) => Validators.validateEmail(value),
                    onChanged: (value) {
                      _emailController.text = value;
                    },
                    hintText: 'Email',
                  ),
                  const SizedBox(height: 12),
                  CustomTextFieldWidget(
                    validator: (value) => Validators.validatePassword(value),
                    onChanged: (value) {
                      _passwordController.text = value;
                    },
                    hintText: 'Password',
                  ),
                  const SizedBox(height: 40),
                  CustomButtonWidget(
                    onPressed: () async {
                      if (!_formKey.currentState!.validate()) {
                        try {
                          await registerNewUser(
                            _emailController.text,
                            _passwordController.text,
                          );
                          if (!context.mounted) return;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Your account has been created successfully!',
                              ),
                            ),
                          );
                          // ToDo: Navigate to the next screen
                        } on FirebaseAuthException catch (e) {
                          if (!context.mounted) return;
                          firebaseErrorHandeling(e, context);
                        } on Exception catch (e) {
                          if (!context.mounted) return;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'An error occurred. Please try again later.',
                              ),
                            ),
                          );
                          log('Error: $e');
                        }
                      } else {
                        if (!context.mounted) return;
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Please fill in all required fields and ensure they are valid.',
                            ),
                          ),
                        );
                      }
                    },
                    text: 'Sign Up',
                  ),
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
      ),
    );
  }

  void firebaseErrorHandeling(FirebaseAuthException e, BuildContext context) {
    if (e.code == 'weak-password') {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('The password provided is too weak.')),
      );
      log('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('The account already exists for that email.')),
      );
      log('The account already exists for that email.');
    }
  }

  Future<void> registerNewUser(String email, String password) async {
    var auth = FirebaseAuth.instance;
    UserCredential user = await auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    log('User created: ${user.user?.email}');
  }
}
