import 'package:flutter/material.dart';

class DropdownMenuExplanationSection extends StatelessWidget {
  const DropdownMenuExplanationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        "DropdownMenu is a Material 3 widget used to allow users "
        "to select a value from a list of options.\n\n"
        "It replaces the older DropdownButton and integrates "
        "better with modern Material Design.\n\n"
        "Key features:\n\n"
        "• Built-in search capability\n"
        "• Better accessibility\n"
        "• Supports icons and labels\n"
        "• Works well with Material 3 theming\n\n"
        "DropdownMenu uses DropdownMenuEntry objects to define "
        "each option in the menu.\n\n"
        "In this example, we demonstrate a basic dropdown menu "
        "and another dropdown with icons.",
        style: TextStyle(fontSize: 16, height: 1.6, color: Colors.white),
      ),
    );
  }
}
