import 'package:flutter/material.dart';

enum SnackBarType { success, error, warning, info }

class CustomSnackBar {
  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> show({
    required BuildContext context,
    required String message,
    SnackBarType type = SnackBarType.info,
    Duration duration = const Duration(seconds: 3),
  }) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();

    final config = _getSnackBarConfig(type);

    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(config.icon, color: Colors.white, size: 24),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                message,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        backgroundColor: config.backgroundColor,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        duration: duration,
        elevation: 4,
      ),
    );
  }

  static _SnackBarConfig _getSnackBarConfig(SnackBarType type) {
    switch (type) {
      case SnackBarType.success:
        return _SnackBarConfig(
          backgroundColor: const Color(0xFF2E7D32),
          icon: Icons.check_circle_outline,
        );
      case SnackBarType.error:
        return _SnackBarConfig(
          backgroundColor: const Color(0xFFD32F2F),
          icon: Icons.error_outline,
        );
      case SnackBarType.warning:
        return _SnackBarConfig(
          backgroundColor: const Color(0xFFED6C02),
          icon: Icons.warning_amber_rounded,
        );
      case SnackBarType.info:
        return _SnackBarConfig(
          backgroundColor: const Color(0xFF0288D1),
          icon: Icons.info_outline,
        );
    }
  }
}

class _SnackBarConfig {
  final Color backgroundColor;
  final IconData icon;

  _SnackBarConfig({required this.backgroundColor, required this.icon});
}
