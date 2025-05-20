import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  final bool isLoading;
  final String? imageAssetPath;
  final Widget? customImage;
  final Color spinnerColor;
  final double spinnerSize;
  final double imageWidth;
  final double imageHeight;
  final BoxDecoration? containerDecoration;

  const LoadingScreen({
    Key? key,
    required this.isLoading,
    this.imageAssetPath,
    this.customImage,
    this.spinnerColor = Colors.blue,
    this.spinnerSize = 40.0,
    this.imageWidth = 80.0,
    this.imageHeight = 20.0,
    this.containerDecoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isLoading,
      child: AnimatedOpacity(
        opacity: isLoading ? 1.0 : 0.0,
        duration: Duration(milliseconds: 300),
        child: Container(
          color: Colors.black.withOpacity(0.5), // Full-screen background
          child: Center(
            child: Container(
              width: 120,
              height: 120,
              decoration: containerDecoration ??
                  BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(16),
                  ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: spinnerSize,
                    height: spinnerSize,
                    child: CircularProgressIndicator(
                      strokeWidth: 5.0,
                      valueColor: AlwaysStoppedAnimation<Color>(spinnerColor),
                    ),
                  ),
                  if (customImage != null)
                    customImage!
                  else if (imageAssetPath != null)
                    Image.asset(
                      imageAssetPath!,
                      width: imageWidth,
                      height: imageHeight,
                      fit: BoxFit.fitWidth,
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
