import 'package:flutter/material.dart';

class ListGenerateExplanationSection extends StatelessWidget {
  const ListGenerateExplanationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        "List.generate creates a list with a specified number of "
        "elements using a generator function.\n\n"
        "Instead of manually writing repetitive items, Flutter "
        "calls the generator function for each index and builds "
        "the list dynamically.\n\n"
        "Syntax:\n\n"
        "List.generate(length, (index) => item);\n\n"
        "Common use cases:\n\n"
        "• Creating star rating widgets\n"
        "• Generating grid or list items\n"
        "• Building repeated UI elements dynamically\n"
        "• Creating placeholder or skeleton widgets\n\n"
        "In this example, List.generate is used to create a "
        "5-star rating widget. Each star reacts to taps and "
        "updates the selected rating dynamically.\n\n"
        "This approach keeps the code clean and avoids "
        "manually writing multiple widgets.",
        style: TextStyle(fontSize: 16, height: 1.6, color: Colors.white),
      ),
    );
  }
}
