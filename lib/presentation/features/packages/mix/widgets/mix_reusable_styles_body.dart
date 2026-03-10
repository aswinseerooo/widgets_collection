import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

class MixReusableStylesBody extends StatelessWidget {
  const MixReusableStylesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Reusable Styles in Mix",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 12),

          const Text(
            "Reusable styles allow developers to define a style once and "
            "apply it across multiple widgets. This helps maintain UI "
            "consistency and reduces duplicated styling code.",
            style: TextStyle(fontSize: 16, height: 1.6, color: Colors.white),
          ),

          const SizedBox(height: 24),

          const Text(
            "Demo",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),

          const SizedBox(height: 12),

          Center(
            child: Box(
              style: reusableCardStyle,
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "Reusable Mix Style",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),

          const SizedBox(height: 16),

          Center(
            child: Box(
              style: reusableCardStyle,
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "Same Style Reused Again",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final Style reusableCardStyle = Style(
  $box.color(Colors.teal),
  $box.borderRadius(16),
  $box.padding.all(20),
);
