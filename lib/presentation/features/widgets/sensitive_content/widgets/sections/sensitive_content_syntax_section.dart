import 'package:flutter/material.dart';

class SensitiveContentSyntaxSection extends StatelessWidget {
  const SensitiveContentSyntaxSection({super.key});

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
            'Syntax',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          SelectableText(
            '''SensitiveContent(
  sensitivity: ContentSensitivity.sensitive,
  child: YourWidget(),
)''',
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 14,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Properties',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 12),
          Text(
            '• child → The sensitive widget subtree',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 8),
          Text(
            '• sensitivity → Controls whether the subtree is treated as sensitive',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
