import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

@RoutePage()
class FullscreenVideoPlayerScreen extends StatefulWidget {
  final VideoPlayerController controller;

  const FullscreenVideoPlayerScreen({super.key, required this.controller});

  @override
  State<FullscreenVideoPlayerScreen> createState() =>
      _FullscreenVideoPlayerScreenState();
}

class _FullscreenVideoPlayerScreenState
    extends State<FullscreenVideoPlayerScreen> {
  bool showControls = true;
  double volume = 1;
  Timer? _controlsTimer;

  VideoPlayerController get controller => widget.controller;

  @override
  void initState() {
    super.initState();
    _startControlsTimer();

    controller.addListener(() {
      if (mounted) setState(() {});
    });
  }

  void _startControlsTimer() {
    _controlsTimer?.cancel();
    _controlsTimer = Timer(const Duration(seconds: 2), () {
      if (mounted && controller.value.isPlaying) {
        setState(() {
          showControls = false;
        });
      }
    });
  }

  void _onInteraction() {
    setState(() {
      showControls = true;
    });

    if (controller.value.isPlaying) {
      _startControlsTimer();
    }
  }

  void togglePlayPause() {
    if (controller.value.isPlaying) {
      controller.pause();
    } else {
      controller.play();
    }
    _onInteraction();
  }

  void changeVolume(double v) {
    setState(() {
      volume = v;
      controller.setVolume(v);
    });
  }

  void skipForward() {
    final position = controller.value.position + const Duration(seconds: 10);
    controller.seekTo(position);
    _onInteraction();
  }

  void skipBackward() {
    final position = controller.value.position - const Duration(seconds: 10);
    controller.seekTo(position);
    _onInteraction();
  }

  String format(Duration d) {
    final minutes = d.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = d.inSeconds.remainder(60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }

  IconData getVolumeIcon() {
    if (volume == 0) return Icons.volume_off;
    if (volume < 0.5) return Icons.volume_down;
    return Icons.volume_up;
  }

  @override
  void dispose() {
    _controlsTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: _onInteraction,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Center(
              child: AspectRatio(
                aspectRatio: controller.value.aspectRatio,
                child: VideoPlayer(controller),
              ),
            ),

            /// Overlay
            AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              opacity: showControls ? 1 : 0,
              child: Container(color: Colors.black45),
            ),

            AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              opacity: showControls ? 1 : 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 40,
                    color: Colors.white,
                    icon: const Icon(Icons.replay_10),
                    onPressed: skipBackward,
                  ),
                  const SizedBox(width: 20),
                  IconButton(
                    iconSize: 70,
                    color: Colors.white,
                    icon: Icon(
                      controller.value.isPlaying
                          ? Icons.pause_circle
                          : Icons.play_circle,
                    ),
                    onPressed: togglePlayPause,
                  ),
                  const SizedBox(width: 20),
                  IconButton(
                    iconSize: 40,
                    color: Colors.white,
                    icon: const Icon(Icons.forward_10),
                    onPressed: skipForward,
                  ),
                ],
              ),
            ),

            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 300),
                opacity: showControls ? 1 : 0,
                child: Column(
                  children: [
                    VideoProgressIndicator(
                      controller,
                      allowScrubbing: true,
                      colors: const VideoProgressColors(
                        playedColor: Colors.red,
                        bufferedColor: Colors.grey,
                        backgroundColor: Colors.white24,
                      ),
                    ),

                    const SizedBox(height: 8),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${format(controller.value.position)} / ${format(controller.value.duration)}",
                          style: const TextStyle(color: Colors.white),
                        ),

                        Row(
                          children: [
                            Icon(getVolumeIcon(), color: Colors.white),
                            SizedBox(
                              width: 100,
                              child: Slider(
                                value: volume,
                                min: 0,
                                max: 1,
                                activeColor: Colors.white,
                                inactiveColor: Colors.white30,
                                onChanged: changeVolume,
                              ),
                            ),

                            IconButton(
                              icon: const Icon(
                                Icons.fullscreen_exit,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                context.back();
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
