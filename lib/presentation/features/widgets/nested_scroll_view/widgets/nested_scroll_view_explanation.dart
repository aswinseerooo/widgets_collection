import 'package:flutter/material.dart';

class NestedScrollViewExplanation extends StatelessWidget {
  const NestedScrollViewExplanation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Text(
        "NestedScrollView is used when you need a scrollable header "
        "combined with inner scrollable content.\n\n"
        "It allows coordination between the outer scroll view "
        "and inner scroll views (like ListView inside tabs).\n\n"
        "Common use case: SliverAppBar with TabBar and scrollable tabs.",
        style: TextStyle(fontSize: 16, height: 1.6, color: Colors.white),
      ),
    );
  }
}
