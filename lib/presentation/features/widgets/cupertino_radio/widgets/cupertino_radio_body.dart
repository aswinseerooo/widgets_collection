import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoRadioBody extends StatefulWidget {
  const CupertinoRadioBody({super.key});
  @override
  State<CupertinoRadioBody> createState() => _CupertinoRadioBodyState();
}

class _CupertinoRadioBodyState extends State<CupertinoRadioBody> {
  String selectedValue = "Option 1";
  final List<String> options = const ["Option 1", "Option 2", "Option 3"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "CupertinoRadio is the iOS-style radio button.\n\n"
            "It allows selecting one option from multiple choices.\n\n"
            "Unlike Material Radio, it follows Cupertino design guidelines.",
            style: TextStyle(color: Colors.white, fontSize: 16, height: 1.6),
          ),
          const SizedBox(height: 30),
          ...options.map((option) {
            return Container(
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.white.withValues(alpha: 0.2)),
              ),
              child: Row(
                children: [
                  CupertinoRadio<String>(
                    value: option,
                    groupValue: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value!;
                      });
                    },
                  ),
                  Padding(
                    padding: .symmetric(horizontal: 12),
                    child: Text(
                      option,
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            );
          }),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              "Selected: $selectedValue",
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
