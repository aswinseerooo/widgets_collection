import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BankingSensitiveContentExample extends StatelessWidget {
  const BankingSensitiveContentExample({super.key});

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
            'Banking Example',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Useful for banking balances and payment details.',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 20),

          SensitiveContent(
            sensitivity: ContentSensitivity.sensitive,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: const LinearGradient(
                  colors: [Color(0xFF2563EB), Color(0xFF7C3AED)],
                ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Available Balance',
                    style: TextStyle(color: Colors.white70),
                  ),
                  SizedBox(height: 12),
                  Text(
                    '₹ 2,45,780',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
