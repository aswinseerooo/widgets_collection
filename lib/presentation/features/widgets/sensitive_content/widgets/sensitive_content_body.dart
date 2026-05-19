import 'package:flutter/material.dart';

import 'examples/banking_sensitive_content_example.dart';
import 'examples/basic_sensitive_content_example.dart';
import 'examples/comparison_sensitive_content_example.dart';
import 'examples/otp_sensitive_content_example.dart';
import 'examples/toggle_sensitive_content_example.dart';
import 'sections/sensitive_content_intro_section.dart';
import 'sections/sensitive_content_notes_section.dart';
import 'sections/sensitive_content_syntax_section.dart';

class SensitiveContentBody extends StatelessWidget {
  const SensitiveContentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SensitiveContentIntroSection(),
          SizedBox(height: 20),

          SensitiveContentSyntaxSection(),
          SizedBox(height: 20),

          BasicSensitiveContentExample(),
          SizedBox(height: 20),

          BankingSensitiveContentExample(),
          SizedBox(height: 20),

          OtpSensitiveContentExample(),
          SizedBox(height: 20),

          ComparisonSensitiveContentExample(),
          SizedBox(height: 20),

          ToggleSensitiveContentExample(),
          SizedBox(height: 20),

          SensitiveContentNotesSection(),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
