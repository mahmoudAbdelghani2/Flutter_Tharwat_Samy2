import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseErrorHandeling {
  static void firebaseErrorHandeling(
    FirebaseAuthException e,
    BuildContext context,
  ) {
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
    } else if (e.code == 'user-not-found') {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('No user found for that email.')));
      log('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Wrong password provided for that user.')),
      );
      log('Wrong password provided for that user.');
    } else if (e.code == 'invalid-email') {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('The email address is not valid.')),
      );
      log('The email address is not valid.');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('An error occurred. Please try again.')),
      );
      log('An error occurred: ${e.message}');
    }
  }
}
