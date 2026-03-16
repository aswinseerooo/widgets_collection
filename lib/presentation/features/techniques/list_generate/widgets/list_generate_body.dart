import 'package:flutter/material.dart';
import 'list_generate_explanation_section.dart';

class ListGenerateBody extends StatefulWidget {
  const ListGenerateBody({super.key});

  @override
  State<ListGenerateBody> createState() => _ListGenerateBodyState();
}

class _ListGenerateBodyState extends State<ListGenerateBody> {
  int rating = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const ListGenerateExplanationSection(),

        const SizedBox(height: 10),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Tap a star to set rating:",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),

        const SizedBox(height: 20),

        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(5, (index) {
              return IconButton(
                onPressed: () {
                  setState(() {
                    rating = index + 1;
                  });
                },
                icon: Icon(
                  index < rating ? Icons.star : Icons.star_border,
                  color: Colors.amber,
                  size: 36,
                ),
              );
            }),
          ),
        ),

        const SizedBox(height: 20),

        Center(
          child: Text(
            "Selected Rating: $rating / 5",
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),

        const SizedBox(height: 40),
      ],
    );
  }
}
