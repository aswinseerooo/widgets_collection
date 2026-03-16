import 'package:flutter/material.dart';
import 'package:widgets_collection/presentation/components/common_button/common_button.dart';

class SizeTweenDemo extends StatefulWidget {
  const SizeTweenDemo({super.key});

  @override
  State<SizeTweenDemo> createState() => _SizeTweenDemoState();
}

class _SizeTweenDemoState extends State<SizeTweenDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    animation = Tween<double>(begin: 80, end: 160).animate(controller);
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
        CommonButton(label: "Start Size Tween", onTap: start),

        const SizedBox(height: 20),

        AnimatedBuilder(
          animation: animation,
          builder: (_, _) {
            return Container(
              width: animation.value,
              height: animation.value,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(16),
              ),
            );
          },
        ),
      ],
    );
  }
}
