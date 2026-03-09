import 'package:flutter/material.dart';
import 'sliver_to_box_explanation.dart';
import 'sliver_to_box_example_card.dart';

class SliverToBoxAdapterBody extends StatelessWidget {
  const SliverToBoxAdapterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [

        const SliverToBoxAdapter(child: SliverToBoxExplanation()),

        const SliverToBoxAdapter(child: SliverToBoxExampleCard()),

        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white.withValues(alpha: 0.2)),
              ),
              child: Text(
                "SliverList Item ${index + 1}",
                style: const TextStyle(color: Colors.white),
              ),
            );
          }, childCount: 10),
        ),
      ],
    );
  }
}
