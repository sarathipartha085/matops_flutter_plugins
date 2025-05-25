import 'package:flutter/material.dart';

class AppStyles {
  static BoxDecoration containerDecoration({
    bool isFocused = false,
    List<Color>? focusedGradientColors,
    List<Color>? unfocusedGradientColors,
    BorderRadius? borderRadius,
    List<BoxShadow>? focusedBoxShadow,
    List<BoxShadow>? unfocusedBoxShadow,
  }) {
    final defaultFocusedGradient = focusedGradientColors ??
        [
          Colors.white,
          Colors.white,
          Colors.white24,
        ];

    final defaultUnfocusedGradient = unfocusedGradientColors ??
        [
          Color(0xFFE0E0E0),
          Color(0xFFB0B0B0),
        ];

    return BoxDecoration(
      gradient: LinearGradient(
        colors: isFocused ? defaultFocusedGradient : defaultUnfocusedGradient,
        begin: isFocused ? Alignment.bottomCenter : Alignment.topCenter,
        end: isFocused ? Alignment.topCenter : Alignment.bottomCenter,
      ),
      borderRadius: borderRadius ?? BorderRadius.circular(25),
      boxShadow: isFocused
          ? (focusedBoxShadow ??
          [
            BoxShadow(
              color: const Color(0x40F4FAFF),
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0, 0),
            ),
          ])
          : (unfocusedBoxShadow ?? []),
    );
  }

  static InputDecoration inputDecoration(
      bool isFocused,
      String label, {
        TextStyle? labelStyle,
        TextStyle? hintStyle,
        TextStyle? focusedLabelStyle,
        Color? focusedBorderColor,
        Color? enabledBorderColor,
        double borderRadius = 25,
        EdgeInsetsGeometry? contentPadding,
      }) {
    final defaultFocusedBorderColor = focusedBorderColor ?? const Color(0xFF004DAB);
    final defaultEnabledBorderColor = enabledBorderColor ?? (isFocused ? const Color(0xFF004DAB) : const Color(0xFFB0B0B0));
    final defaultLabelStyle = labelStyle ?? const TextStyle(color: Colors.white);
    final defaultHintStyle = hintStyle ?? TextStyle(color: isFocused ? defaultFocusedBorderColor : defaultEnabledBorderColor);

    return InputDecoration(
      labelText: label,
      filled: true,
      fillColor: Colors.transparent,
      labelStyle: isFocused ? (focusedLabelStyle ?? defaultLabelStyle) : defaultLabelStyle,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          color: defaultEnabledBorderColor,
          width: 2,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          color: defaultFocusedBorderColor,
          width: 2,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          color: defaultEnabledBorderColor,
          width: 2,
        ),
      ),
      hintStyle: defaultHintStyle,
      contentPadding: contentPadding ?? const EdgeInsets.symmetric(horizontal: 20.0, vertical: 18.0),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          color: defaultFocusedBorderColor,
          width: 2,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          color: defaultEnabledBorderColor,
          width: 2,
        ),
      ),
    );
  }
}
