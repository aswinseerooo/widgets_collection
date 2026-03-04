import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets_collection/presentation/features/cupertino_sliding_segmented_control/widgets/cupertino_sliding_segmented_content.dart';

class CupertinoSlidingSegmentedControlBody extends StatefulWidget {
  const CupertinoSlidingSegmentedControlBody({super.key});

  @override
  State<CupertinoSlidingSegmentedControlBody> createState() =>
      _CupertinoSlidingSegmentedControlBodyState();
}

class _CupertinoSlidingSegmentedControlBodyState
    extends State<CupertinoSlidingSegmentedControlBody> {
  String selectedSegment = "😀";

  final Map<String, Widget> segments = const {
    "😀": Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Text("😀", style: TextStyle(fontSize: 20)),
    ),
    "🚀": Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Text("🚀", style: TextStyle(fontSize: 20)),
    ),
    "🔥": Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Text("🔥", style: TextStyle(fontSize: 20)),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "CupertinoSlidingSegmentedControl provides "
            "an iOS-style segmented switch.\n\n"
            "It allows switching between multiple segments "
            "with smooth sliding animation.",
            style: TextStyle(color: Colors.white, fontSize: 16, height: 1.6),
          ),

          const SizedBox(height: 30),

          Center(
            child: CupertinoSlidingSegmentedControl<String>(
              backgroundColor: Colors.white.withValues(alpha: 0.2),
              thumbColor: Colors.white,
              groupValue: selectedSegment,
              children: segments,
              onValueChanged: (value) {
                if (value != null) {
                  setState(() {
                    selectedSegment = value;
                  });
                }
              },
            ),
          ),

          const SizedBox(height: 40),

          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: CupertinoSlidingSegmentedContent(
                key: ValueKey(selectedSegment),
                label: selectedSegment,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
