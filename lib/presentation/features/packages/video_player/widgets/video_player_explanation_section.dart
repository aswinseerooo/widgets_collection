import 'package:flutter/material.dart';

class VideoPlayerExplanationSection extends StatelessWidget {
  const VideoPlayerExplanationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        "VideoPlayer is a Flutter plugin used to play videos from "
        "network URLs, local files, or assets.\n\n"
        "It provides basic playback features like play, pause, "
        "seek, and looping.\n\n"
        "The VideoPlayerController manages the video state, "
        "while the VideoPlayer widget displays the video on screen.\n\n"
        "Developers can also build custom controls such as "
        "play buttons, progress bars, and fullscreen playback.",
        style: TextStyle(fontSize: 16, height: 1.6, color: Colors.white),
      ),
    );
  }
}
