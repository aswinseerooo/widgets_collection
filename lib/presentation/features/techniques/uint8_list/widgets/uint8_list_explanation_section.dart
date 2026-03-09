import 'package:flutter/material.dart';

class Uint8ListExplanationSection extends StatelessWidget {
  const Uint8ListExplanationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        "Uint8List is a typed list from dart:typed_data used to store "
        "unsigned 8-bit integers (bytes).\n\n"
        "Each element in a Uint8List can store values from 0 to 255.\n\n"
        "It is commonly used when working with raw binary data such as:\n\n"
        "• Image bytes\n"
        "• File data\n"
        "• Network responses\n"
        "• Encryption data\n"
        "• Base64 conversions\n\n"
        "In Flutter, Uint8List is frequently used with widgets like "
        "Image.memory to display images directly from byte data.\n\n"
        "Example:\n"
        "final bytes = Uint8List.fromList([72, 101, 108, 108, 111]);\n\n"
        "These numbers represent ASCII characters which can be converted "
        "into readable text.",
        style: TextStyle(fontSize: 16, height: 1.6, color: Colors.white),
      ),
    );
  }
}
