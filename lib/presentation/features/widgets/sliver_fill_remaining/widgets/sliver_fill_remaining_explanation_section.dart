import 'package:flutter/material.dart';

class SliverFillRemainingExplanationSection extends StatelessWidget {
  const SliverFillRemainingExplanationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        "SliverFillRemaining is used inside a CustomScrollView. "
        "It expands its child to fill the remaining space in the viewport.\n\n"
        "This is useful when you want content to stick to the bottom "
        "or when you want to fill empty space dynamically.\n\n"
        "It prevents awkward empty areas when content is smaller than screen height.",
        style: TextStyle(fontSize: 16, height: 1.6, color: Colors.white),
      ),
    );
  }
}
