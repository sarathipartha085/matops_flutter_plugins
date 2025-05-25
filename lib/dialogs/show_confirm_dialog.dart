import 'package:flutter/material.dart';
import '../widgets/gradient_background.dart';

Future<bool?> showConfirmDialog({
  required BuildContext context,
  required String title,
  required String message,
  required VoidCallback onConfirm,
  String confirmText = 'Yes',
  String cancelText = 'Cancel',
  TextStyle? titleTextStyle,
  TextStyle? messageTextStyle,
  TextStyle? confirmTextStyle,
  TextStyle? cancelTextStyle,
  Color confirmColor = Colors.green,
  Color cancelColor = Colors.red,
  Widget? icon,
}) {
  return showDialog<bool>(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: Colors.transparent,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: GradientBackground(
            borderRadius: BorderRadius.circular(20),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (icon != null) ...[
                    icon,
                    const SizedBox(height: 12),
                  ],
                  Text(
                    title,
                    style: titleTextStyle ??
                        const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    message,
                    style: messageTextStyle ??
                        const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        child: Text(
                          cancelText,
                          style: cancelTextStyle ??
                              TextStyle(
                                fontWeight: FontWeight.bold,
                                color: cancelColor,
                              ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                          onConfirm();
                        },
                        child: Text(
                          confirmText,
                          style: confirmTextStyle ??
                              TextStyle(
                                fontWeight: FontWeight.bold,
                                color: confirmColor,
                              ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
