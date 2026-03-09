import 'package:flutter/material.dart';

class SliverToBoxExplanation extends StatelessWidget {
  const SliverToBoxExplanation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Text(
        "SliverToBoxAdapter allows you to place a normal "
        "widget inside a CustomScrollView.\n\n"
        "Since CustomScrollView only accepts slivers, "
        "this widget acts as a bridge between regular "
        "widgets and sliver-based layouts.\n\n"
        "It is commonly used for headers, banners, "
        "static content, or sections inside sliver layouts.",
        style: TextStyle(fontSize: 16, height: 1.6, color: Colors.white),
      ),
    );
  }
}
