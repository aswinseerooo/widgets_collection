import 'package:flutter/material.dart';

class IsolateExplanationSection extends StatelessWidget {
  const IsolateExplanationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        "An Isolate in Flutter is a separate memory and execution "
        "thread used to perform heavy computations without blocking "
        "the main UI thread.\n\n"
        "Flutter runs UI code on the main isolate. If expensive "
        "operations such as large calculations, JSON parsing, or "
        "data processing are executed on the main isolate, the UI "
        "can freeze.\n\n"
        "Isolates solve this by running heavy work in a background "
        "thread while the UI remains responsive.\n\n"
        "Flutter provides the compute() helper which automatically "
        "creates and manages an isolate for a function.\n\n"
        "Common use cases:\n\n"
        "• Processing large JSON data\n"
        "• Image processing\n"
        "• Encryption / hashing\n"
        "• Heavy calculations\n\n"
        "In this example, a heavy computation is executed in an "
        "Isolate using compute() so the UI remains smooth.",
        style: TextStyle(fontSize: 16, height: 1.6, color: Colors.white),
      ),
    );
  }
}
