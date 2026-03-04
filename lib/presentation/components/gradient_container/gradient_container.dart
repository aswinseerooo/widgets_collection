import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.content});

  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF0B1E3F),
            Color(0xFF1E3A8A),
            Color(0xFF4C1D95),
            Color(0xFF14B8A6),
          ],
          stops: [0.0, 0.35, 0.7, 1.0],
        ),
      ),
      child: content,
    );
  }
}
