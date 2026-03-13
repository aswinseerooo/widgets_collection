import 'package:flutter/material.dart';

class FirebaseAiTypingIndicator extends StatefulWidget {
  const FirebaseAiTypingIndicator({super.key});

  @override
  State<FirebaseAiTypingIndicator> createState() => FirebaseAiTypingIndicatorState();
}

class FirebaseAiTypingIndicatorState extends State<FirebaseAiTypingIndicator>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, _) {
        final count = (_controller.value * 3).floor() + 1;

        return Text(
          "." * count,
          style: const TextStyle(color: Colors.white, fontSize: 22),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
