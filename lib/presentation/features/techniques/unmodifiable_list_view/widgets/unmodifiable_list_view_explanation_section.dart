import 'package:flutter/material.dart';

class UnmodifiableListViewExplanationSection extends StatelessWidget {
  const UnmodifiableListViewExplanationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        "UnmodifiableListView is a wrapper around a List that prevents "
        "modification of its contents.\n\n"
        "It is commonly used when you want to expose a list publicly "
        "but prevent external code from modifying it.\n\n"
        "This is useful in state management patterns such as "
        "Provider, Riverpod, and BLoC, where the internal state "
        "should only be modified by the class that owns it.\n\n"
        "Attempting to modify an UnmodifiableListView will throw "
        "an UnsupportedError.\n\n"
        "Example:\n"
        "final safeList = UnmodifiableListView(originalList);\n\n"
        "Now safeList can be read but not changed.",
        style: TextStyle(fontSize: 16, height: 1.6, color: Colors.white),
      ),
    );
  }
}
