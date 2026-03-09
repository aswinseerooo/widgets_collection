import 'package:flutter/material.dart';

class MediaQueryPropertyOfExplanationSection extends StatelessWidget {
  const MediaQueryPropertyOfExplanationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        "MediaQuery provides information about the current device "
        "screen, layout constraints, and accessibility settings.\n\n"
        "Traditionally developers accessed it using:\n"
        "MediaQuery.of(context)\n\n"
        "Flutter introduced MediaQuery.propertyOf to efficiently "
        "listen only to a specific property instead of rebuilding "
        "when any MediaQuery value changes.\n\n"
        "This improves performance because widgets rebuild only "
        "when the requested property changes.\n\n"
        "Common MediaQuery properties include:\n\n"
        "size → The width and height of the screen.\n"
        "padding → Areas obscured by system UI like status bar.\n"
        "viewInsets → Areas covered by system UI such as keyboard.\n"
        "devicePixelRatio → Physical pixel density of the screen.\n"
        "textScaler → Scaling factor for accessibility text size.\n"
        "orientation → Current device orientation.\n\n"
        "Using propertyOf helps create responsive layouts while "
        "avoiding unnecessary rebuilds.",
        style: TextStyle(fontSize: 16, height: 1.6, color: Colors.white),
      ),
    );
  }
}
