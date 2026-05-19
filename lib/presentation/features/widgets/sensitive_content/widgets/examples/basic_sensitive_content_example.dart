import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BasicSensitiveContentExample extends StatelessWidget {
  const BasicSensitiveContentExample({super.key});

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
            'Basic Example',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Wrap any private UI with SensitiveContent.',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 20),

          SensitiveContent(
            sensitivity: ContentSensitivity.sensitive,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white.withValues(alpha: 0.08),
              ),
              child: const Text(
                'Sensitive User Information',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
