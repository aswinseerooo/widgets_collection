import 'package:flutter/material.dart';

class MediaQueryPropertyOfInfoTile extends StatelessWidget {
  final String title;
  final String value;

  const MediaQueryPropertyOfInfoTile({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: const TextStyle(color: Colors.white)),
            Text(
              value,
              style: const TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
