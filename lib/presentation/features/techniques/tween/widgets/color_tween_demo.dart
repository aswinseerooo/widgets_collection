import 'package:flutter/material.dart';
import 'package:widgets_collection/presentation/components/common_button/common_button.dart';

class ColorTweenDemo extends StatefulWidget {
  const ColorTweenDemo({super.key});

  @override
  State<ColorTweenDemo> createState() => _ColorTweenDemoState();
}

class _ColorTweenDemoState extends State<ColorTweenDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Color?> animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    animation = ColorTween(
      begin: Colors.blue,
      end: Colors.red,
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
        CommonButton(label: "Start Color Tween", onTap: start),

        const SizedBox(height: 20),

        AnimatedBuilder(
          animation: animation,
          builder: (_, _) {
            return Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: animation.value,
                borderRadius: BorderRadius.circular(16),
              ),
            );
          },
        ),
      ],
    );
  }
}
