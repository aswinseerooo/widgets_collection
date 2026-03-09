import 'package:flutter/material.dart';

class NestedScrollViewTabListContent extends StatelessWidget {
  final String label;

  const NestedScrollViewTabListContent({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return CustomScrollView(
          key: PageStorageKey(label),
          slivers: [
            SliverOverlapInjector(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.white.withValues(alpha: 0.2),
                      ),
                    ),
                    child: Text(
                      "$label Item ${index + 1}",
                      style: const TextStyle(color: Colors.white),
                    ),
                  );
                }, childCount: 20),
              ),
            ),
          ],
        );
      },
    );
  }
}
