import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

class MixVariantsBody extends StatelessWidget {
  const MixVariantsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final primary = Variant('primary');

    final style = Style(
      $box.padding.all(16),
      $box.borderRadius(12),

      primary($box.color(Colors.green)),
    );

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Variants in Mix",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 12),

          const Text(
            "Variants allow conditional styling. A widget can change its "
            "appearance depending on the variant applied.",
            style: TextStyle(fontSize: 16, height: 1.6, color: Colors.white),
          ),

          const SizedBox(height: 24),

          const Text(
            "Demo",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),

          const SizedBox(height: 12),

          Center(
            child: Box(
              style: style.applyVariant(primary),
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "Primary Variant",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
