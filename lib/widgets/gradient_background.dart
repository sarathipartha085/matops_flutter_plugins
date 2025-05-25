import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  final Widget child;
  final bool isFeed;
  final Gradient? gradient;
  final BorderRadius? borderRadius;

  const GradientBackground({
    super.key,
    required this.child,
    this.isFeed = false,
    this.gradient,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        gradient: gradient ??
            LinearGradient(
              colors: [Colors.black, Colors.black54],
              begin: isFeed ? Alignment.bottomCenter : Alignment.topCenter,
              end: isFeed ? Alignment.topCenter : Alignment.bottomCenter,
            ),
        borderRadius:
        borderRadius ?? (isFeed ? BorderRadius.circular(15) : BorderRadius.zero),
      ),
      child: child,
    );
  }
}
