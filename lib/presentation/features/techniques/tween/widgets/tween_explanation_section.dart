import 'package:flutter/material.dart';

class TweenExplanationSection extends StatelessWidget {
  const TweenExplanationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        "A Tween (short for 'in-between') defines how a value "
        "transitions between two points during an animation.\n\n"
        "Tweens are commonly used with AnimationController to "
        "interpolate values such as position, size, opacity, "
        "rotation, and colors.\n\n"
        "Syntax:\n\n"
        "Tween(begin: startValue, end: endValue)\n\n"
        "The Tween generates intermediate values between "
        "the begin and end values as the animation progresses.\n\n"
        "Common Tween types include:\n\n"
        "• Tween<double> → numeric animations\n"
        "• ColorTween → color transitions\n"
        "• SizeTween → size animations\n"
        "• AlignmentTween → position alignment changes",
        style: TextStyle(fontSize: 16, height: 1.6, color: Colors.white),
      ),
    );
  }
}
