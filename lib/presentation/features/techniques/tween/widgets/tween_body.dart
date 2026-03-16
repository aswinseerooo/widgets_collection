import 'package:flutter/material.dart';
import 'package:widgets_collection/domain/entities/enums/enums.dart';

import 'tween_explanation_section.dart';
import 'color_tween_demo.dart';
import 'size_tween_demo.dart';
import 'alignment_tween_demo.dart';

class TweenBody extends StatefulWidget {
  const TweenBody({super.key});

  @override
  State<TweenBody> createState() => _TweenBodyState();
}

class _TweenBodyState extends State<TweenBody> {
  TweenType selectedTween = TweenType.color;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const TweenExplanationSection(),

        const SizedBox(height: 10),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Select a Tween type:",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),

        const SizedBox(height: 10),

        RadioGroup<TweenType>(
          groupValue: selectedTween,
          onChanged: (TweenType? value) {
            if (value != null) {
              setState(() {
                selectedTween = value;
              });
            }
          },
          child: Column(
            children: const [
              RadioListTile<TweenType>(
                value: TweenType.color,
                activeColor: Colors.white,
                title: Text(
                  "ColorTween",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              RadioListTile<TweenType>(
                value: TweenType.size,
                activeColor: Colors.white,
                title: Text("SizeTween", style: TextStyle(color: Colors.white)),
              ),
              RadioListTile<TweenType>(
                value: TweenType.alignment,
                activeColor: Colors.white,
                title: Text(
                  "AlignmentTween",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 20),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Divider(color: Colors.white30),
        ),

        const SizedBox(height: 20),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Builder(
            builder: (_) {
              switch (selectedTween) {
                case TweenType.color:
                  return const ColorTweenDemo();

                case TweenType.size:
                  return const SizeTweenDemo();

                case TweenType.alignment:
                  return const AlignmentTweenDemo();
              }
            },
          ),
        ),

        const SizedBox(height: 40),
      ],
    );
  }
}
