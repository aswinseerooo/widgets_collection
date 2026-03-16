import 'package:flutter/material.dart';
import 'package:widgets_collection/presentation/components/common_button/common_button.dart';

class AlignmentTweenDemo extends StatefulWidget {
  const AlignmentTweenDemo({super.key});

  @override
  State<AlignmentTweenDemo> createState() => _AlignmentTweenDemoState();
}

class _AlignmentTweenDemoState extends State<AlignmentTweenDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Alignment> animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    animation = AlignmentTween(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ).animate(controller);
  }

  void start() {
    controller.forward(from: 0);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CommonButton(label: "Start Alignment Tween", onTap: start),

        const SizedBox(height: 20),

        SizedBox(
          height: 150,
          child: AnimatedBuilder(
            animation: animation,
            builder: (_, child) {
              return Align(alignment: animation.value, child: child);
            },
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
