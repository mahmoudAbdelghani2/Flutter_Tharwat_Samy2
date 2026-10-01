import 'dart:ui';

import 'package:flutter/material.dart';

class AppConsts {
  static const Color primaryBackgroundColor = Color(0xFF2B475E);
  static const String loginPath = '/';
  static const String signupPath = '/signup';

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason>
  showSnackBar({required String snackText, required BuildContext context}) {
    return ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(snackText)));
  }
}
