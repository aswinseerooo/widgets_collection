import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../../presentation/components/common_button/common_button.dart';

class ToggleSensitiveContentExample extends StatefulWidget {
  const ToggleSensitiveContentExample({super.key});

  @override
  State<ToggleSensitiveContentExample> createState() =>
      _ToggleSensitiveContentExampleState();
}

class _ToggleSensitiveContentExampleState
    extends State<ToggleSensitiveContentExample> {
  bool isSensitive = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.white.withValues(alpha: 0.08),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Toggle Sensitive State',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Enable or disable sensitivity dynamically.',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 20),

          SensitiveContent(
            sensitivity: isSensitive
                ? ContentSensitivity.sensitive
                : ContentSensitivity.notSensitive,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white.withValues(alpha: 0.08),
              ),
              child: Text(
                isSensitive ? 'Sensitive Enabled' : 'Sensitive Disabled',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),

          CommonButton(
            label: 'Toggle Sensitive',
            onTap: () {
              setState(() {
                isSensitive = !isSensitive;
              });
            },
          ),
        ],
      ),
    );
  }
}
