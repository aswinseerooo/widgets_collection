import 'package:flutter/material.dart';

class SliverToBoxExampleCard extends StatelessWidget {
  const SliverToBoxExampleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withValues(alpha: 0.2)),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Example Use Case",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "This entire card is wrapped inside "
            "SliverToBoxAdapter.\n\n"
            "Without it, you cannot directly place "
            "a normal Container inside CustomScrollView.",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
