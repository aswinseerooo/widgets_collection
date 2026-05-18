import 'package:flutter/material.dart';

class SegmentedButtonExplanationSection extends StatelessWidget {
  const SegmentedButtonExplanationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        "SegmentedButton is a Material 3 widget used to present a group "
        "of options where only one or multiple segments can be selected.\n\n"
        "It replaces older patterns like ToggleButtons and provides "
        "better accessibility, styling, and interaction.\n\n"
        "Each option is represented using a ButtonSegment.\n\n"
        "Common use cases:\n\n"
        "• Filter options\n"
        "• Category selection\n"
        "• Sorting controls\n"
        "• View switching (list/grid/map)\n\n"
        "SegmentedButton manages selection using a Set of values, "
        "which allows both single-selection and multi-selection modes.\n\n"
        "In this example, a segmented button lets the user choose "
        "between different delivery methods.",
        style: TextStyle(color: Colors.white, fontSize: 16, height: 1.6),
      ),
    );
  }
}
