import 'package:flutter/material.dart';

void showSnackbar(BuildContext context, bool status, String message) {
  Color backgroundColor = status ? Colors.green : Colors.red;
  String snackbarMessage = status ? message : message;

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        snackbarMessage,
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: backgroundColor,
      duration: Duration(seconds: 3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(16),
      action: SnackBarAction(
        label: 'Close',
        textColor: Colors.white, // Color of the action text
        onPressed: () {
          // Dismiss the snackbar
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
    ),
  );
}
