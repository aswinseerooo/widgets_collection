import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final EdgeInsetsGeometry padding;
  final double borderRadius;
  final double fontSize;

  const CommonButton({
    super.key,
    required this.label,
    required this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
    this.borderRadius = 14,
    this.fontSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(borderRadius),
          onTap: onTap,
          child: Padding(
            padding: padding,
            child: Text(
              label,
              style: TextStyle(color: Colors.white, fontSize: fontSize),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
