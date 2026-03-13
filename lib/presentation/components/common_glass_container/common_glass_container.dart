import 'package:flutter/material.dart';

class CommonGlassContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final double borderRadius;
  final double? height;
  final VoidCallback? onTap;

  const CommonGlassContainer({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.symmetric(horizontal: 12),
    this.borderRadius = 12,
    this.height = 48,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final border = BorderRadius.circular(borderRadius);

    return Material(
      color: Colors.transparent,
      child: Ink(
        height: height,
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.1),
          borderRadius: border,
        ),
        child: InkWell(
          borderRadius: border,
          onTap: onTap,
          child: Center(
            child: Padding(padding: padding, child: child),
          ),
        ),
      ),
    );
  }
}
