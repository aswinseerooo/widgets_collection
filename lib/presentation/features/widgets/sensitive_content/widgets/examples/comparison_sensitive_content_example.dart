import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ComparisonSensitiveContentExample extends StatelessWidget {
  const ComparisonSensitiveContentExample({super.key});

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
            'Comparison Example',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Notice there is no visual difference.',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 20),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white.withValues(alpha: 0.05),
            ),
            child: const Text(
              'Normal Content',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),

          const SizedBox(height: 20),

          SensitiveContent(
            sensitivity: ContentSensitivity.sensitive,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white.withValues(alpha: 0.05),
              ),
              child: const Text(
                'Sensitive Content',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),

          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.orange.withValues(alpha: 0.12),
            ),
            child: const Text(
              'SensitiveContent works internally with the framework/platform and does not visually modify the widget.',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
