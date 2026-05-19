import 'package:flutter/material.dart';

class SensitiveContentNotesSection extends StatelessWidget {
  const SensitiveContentNotesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.orange.withValues(alpha: 0.10),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Important Notes',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),

          Text(
            '• SensitiveContent does NOT blur or hide UI.',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 10),

          Text(
            '• It provides privacy metadata to the framework/platform.',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 10),

          Text(
            '• Useful for banking apps, OTPs, passwords, and personal data.',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 10),

          Text(
            '• Platform behavior may vary.',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 10),

          Text(
            '• Combine with additional security measures in production apps.',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
