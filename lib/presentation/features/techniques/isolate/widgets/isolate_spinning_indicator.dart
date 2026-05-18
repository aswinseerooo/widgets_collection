import 'package:flutter/material.dart';

class SpinningIndicator extends StatefulWidget {
  const SpinningIndicator({super.key});

  @override
  State<SpinningIndicator> createState() => _SpinningIndicatorState();
}

class _SpinningIndicatorState extends State<SpinningIndicator>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: controller,
      child: const Icon(Icons.sync, color: Colors.white, size: 40),
    );
  }
}
