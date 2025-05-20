import 'package:flutter/material.dart';

void showSnackbar(
    BuildContext context, {
      required String message,
      bool isSuccess = true,
      Duration duration = const Duration(seconds: 3),
      String? actionLabel,
      VoidCallback? onAction,
      Color? backgroundColor,
      Color textColor = Colors.white,
      Color? actionTextColor,
      double borderRadius = 30.0,
      EdgeInsets margin = const EdgeInsets.all(16),
    }) {
  final Color defaultBackground = isSuccess ? Colors.green : Colors.red;

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: TextStyle(color: textColor),
      ),
      backgroundColor: backgroundColor ?? defaultBackground,
      duration: duration,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      behavior: SnackBarBehavior.floating,
      margin: margin,
      action: (actionLabel != null && onAction != null)
          ? SnackBarAction(
        label: actionLabel,
        textColor: actionTextColor ?? textColor,
        onPressed: onAction,
      )
          : null,
    ),
  );
}
