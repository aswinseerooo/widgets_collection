import 'package:flutter/material.dart';

class CupertinoSlidingSegmentedContent extends StatelessWidget {
  final String label;

  const CupertinoSlidingSegmentedContent({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withValues(alpha: 0.2)),
      ),
      child: Text(label, style: const TextStyle(fontSize: 180)),
    );
  }
}
