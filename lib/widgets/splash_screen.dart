import 'package:flutter/material.dart';
import 'gradient_background.dart';

class SplashScreen extends StatefulWidget {
  final Widget Function(BuildContext context) onNavigate;
  final Duration duration;
  final String? logoAssetPath;
  final Widget? customLogo;
  final String footerText;
  final TextStyle footerTextStyle;
  final Gradient? backgroundGradient;

  const SplashScreen({
    super.key,
    required this.onNavigate,
    this.duration = const Duration(seconds: 3),
    this.logoAssetPath,
    this.customLogo,
    this.footerText = "© 2025. All rights reserved",
    this.footerTextStyle = const TextStyle(
      fontSize: 14,
      color: Colors.white54,
      fontWeight: FontWeight.bold,
    ),
    this.backgroundGradient,
  });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(widget.duration, () {
        if (mounted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: widget.onNavigate),
          );
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      gradient: widget.backgroundGradient,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            Center(
              child: widget.customLogo ??
                  (widget.logoAssetPath != null
                      ? Image.asset(
                    widget.logoAssetPath!,
                    width: 150,
                    height: 150,
                  )
                      : const FlutterLogo(size: 100)),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  widget.footerText,
                  style: widget.footerTextStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
