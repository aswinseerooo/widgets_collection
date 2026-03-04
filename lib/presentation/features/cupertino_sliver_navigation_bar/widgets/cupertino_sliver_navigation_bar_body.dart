import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSliverNavigationBarBody extends StatelessWidget {
  const CupertinoSliverNavigationBarBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: Text("Cupertino Navigation Bar"),
            backgroundColor: Colors.transparent,
            leading: CupertinoButton(
              child: Icon(CupertinoIcons.back, color: Colors.black),
              onPressed: () {
                context.back();
              },
            ),
            border: null,
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: const Text(
                "CupertinoSliverNavigationBar provides an iOS-style "
                "collapsing navigation bar.\n\n"
                "It expands with a large title and collapses "
                "into a smaller navigation bar when scrolled.\n\n"
                "It must be used inside CustomScrollView "
                "and within CupertinoPageScaffold.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  height: 1.6,
                ),
              ),
            ),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.white.withValues(alpha: 0.2),
                  ),
                ),
                child: Text(
                  "Cupertino Item ${index + 1}",
                  style: const TextStyle(color: Colors.black),
                ),
              );
            }, childCount: 15),
          ),
        ],
      ),
    );
  }
}
