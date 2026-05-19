import 'package:flutter/material.dart';

class SensitiveContentIntroSection extends StatelessWidget {
  const SensitiveContentIntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.white.withValues(alpha: 0.08),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What is SensitiveContent?',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 12),
          Text(
            'SensitiveContent marks widgets as privacy-sensitive so the operating system and framework can treat them differently during screenshots, previews, app switchers, and screen sharing.',
            style: TextStyle(height: 1.5, color: Colors.white),
          ),
          SizedBox(height: 20),
          Text(
            'Important',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'SensitiveContent does NOT visually hide or blur your UI.',
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
          ),
          SizedBox(height: 20),
          Text(
            'What You Will Learn',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 12),

          _LearningPoint(text: 'How to mark private UI as sensitive'),
          _LearningPoint(text: 'Real-world banking and OTP use cases'),
          _LearningPoint(
            text: 'Difference between visual hiding and privacy metadata',
          ),
          _LearningPoint(text: 'How SensitiveContent works internally'),
        ],
      ),
    );
  }
}

class _LearningPoint extends StatelessWidget {
  final String text;

  const _LearningPoint({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 4),
            child: Icon(
              Icons.check_circle_rounded,
              size: 18,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(text, style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
