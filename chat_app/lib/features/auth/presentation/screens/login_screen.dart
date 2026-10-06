import 'dart:developer';

import 'package:chat_app/core/consts/app_consts.dart';
import 'package:chat_app/core/consts/custom_snak_bar.dart';
import 'package:chat_app/core/consts/validators.dart';
import 'package:chat_app/core/services/firebase/firebase_error_handeling.dart';
import 'package:chat_app/core/services/firebase/firebase_services.dart';
import 'package:chat_app/core/widgets/custom_button_widget.dart';
import 'package:chat_app/core/widgets/custom_text_field_widget.dart';
import 'package:chat_app/features/auth/presentation/widgets/rich_text_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      color: Colors.white,
      progressIndicator: CircularProgressIndicator(color: Colors.white),
      inAsyncCall: _isLoading,
      child: Scaffold(
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
                    CustomTextFieldWidget(
                      validator: (value) => Validators.validateEmail(value),
                      hintText: 'Email',
                      onChanged: (value) {
                        _emailController.text = value;
                      },
                    ),
                    const SizedBox(height: 12),
                    CustomTextFieldWidget(
                      validator: (value) => Validators.validatePassword(value),
                      hintText: 'Password',
                      onChanged: (value) {
                        _passwordController.text = value;
                      },
                    ),
                    const SizedBox(height: 40),
                    CustomButtonWidget(
                      text: 'Login',
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          _isLoading = true;
                          setState(() {});
                          try {
                            var userCredential =
                                await FirebaseServices.signInWithEmailAndPassword(
                                  _emailController.text,
                                  _passwordController.text,
                                );
                            log(
                              'User logged in: ${userCredential.user?.email}',
                            );

                            if (!context.mounted) return;
                            CustomSnackBar.show(
                              context: context,
                              message: 'Login successful!',
                              type: SnackBarType.success,
                            );
                            GoRouter.of(
                              context,
                            ).pushReplacement(AppConsts.chatPath);
                          } on FirebaseAuthException catch (e) {
                            if (!context.mounted) return;
                            FirebaseErrorHandeling.firebaseErrorHandeling(
                              e,
                              context,
                            );
                          } on Exception catch (e) {
                            if (!context.mounted) return;
                            CustomSnackBar.show(
                              context: context,
                              message: 'An error occurred. Please try again.',
                              type: SnackBarType.error,
                            );
                            log('Error: $e');
                          }
                          _isLoading = false;
                          setState(() {});
                        } else {
                          if (!context.mounted) return;
                          CustomSnackBar.show(
                            context: context,
                            message:
                                'Please fill in all required fields and ensure they are valid.',
                            type: SnackBarType.warning,
                          );
                        }
                      },
                    ),
                    const SizedBox(height: 12),
                    RichTextWidget(
                      onTap: () {
                        GoRouter.of(
                          context,
                        ).pushReplacement(AppConsts.signupPath);
                      },
                      mainText: 'Don\'t have an account?',
                      linkText: 'Register',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
