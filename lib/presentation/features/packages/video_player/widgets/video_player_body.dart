import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:widgets_collection/presentation/core/router/app_router.dart';
import 'video_player_explanation_section.dart';

class VideoPlayerBody extends StatefulWidget {
  const VideoPlayerBody({super.key});

  @override
  State<VideoPlayerBody> createState() => _VideoPlayerBodyState();
}

class _VideoPlayerBodyState extends State<VideoPlayerBody> {
  late VideoPlayerController controller;

  bool showControls = true;
  double volume = 1.0;

  Timer? _controlsTimer;

  @override
  void initState() {
    super.initState();

    controller =
        VideoPlayerController.networkUrl(
            Uri.parse(
              "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
            ),
          )
          ..initialize().then((_) {
            setState(() {});
            _startControlsTimer();
          });

    controller.addListener(() {
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    _controlsTimer?.cancel();
    controller.dispose();
    super.dispose();
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

  void _onUserInteraction() {
    setState(() {
      showControls = true;
    });

    if (controller.value.isPlaying) {
      _startControlsTimer();
    }
  }

  void togglePlayPause() {
    final isEnded = controller.value.position >= controller.value.duration;

    if (isEnded) {
      controller.seekTo(Duration.zero);
      controller.play();
    } else if (controller.value.isPlaying) {
      controller.pause();
    } else {
      controller.play();
    }

    _onUserInteraction();
  }

  void skipForward() {
    final position = controller.value.position + const Duration(seconds: 10);
    controller.seekTo(position);
    _onUserInteraction();
  }

  void skipBackward() {
    final position = controller.value.position - const Duration(seconds: 10);
    controller.seekTo(position);
    _onUserInteraction();
  }

  void changeVolume(double value) {
    setState(() {
      volume = value;
      controller.setVolume(value);
    });
  }

  void toggleFullscreen() {
    context.pushRoute(FullscreenVideoPlayerRoute(controller: controller));
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
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const VideoPlayerExplanationSection(),

        const SizedBox(height: 10),

        if (controller.value.isInitialized)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GestureDetector(
              onTap: _onUserInteraction,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  AspectRatio(
                    aspectRatio: controller.value.aspectRatio,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: VideoPlayer(controller),
                    ),
                  ),

                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 300),
                    opacity: showControls ? 1 : 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),

                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 300),
                    opacity: showControls ? 1 : 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          iconSize: 36,
                          color: Colors.white,
                          icon: const Icon(Icons.replay_10),
                          onPressed: skipBackward,
                        ),
                        const SizedBox(width: 20),
                        IconButton(
                          iconSize: 50,
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
                          iconSize: 36,
                          color: Colors.white,
                          icon: const Icon(Icons.forward_10),
                          onPressed: skipForward,
                        ),
                      ],
                    ),
                  ),

                  Positioned(
                    bottom: 10,
                    left: 10,
                    right: 10,
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

                          const SizedBox(height: 5),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${format(controller.value.position)} / ${format(controller.value.duration)}",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),

                              Row(
                                children: [
                                  Icon(getVolumeIcon(), color: Colors.white),

                                  SizedBox(
                                    width: 80,
                                    child: Slider(
                                      value: volume,
                                      min: 0,
                                      max: 1,
                                      activeColor: Colors.white,
                                      inactiveColor: Colors.white38,
                                      onChanged: changeVolume,
                                    ),
                                  ),

                                  IconButton(
                                    icon: const Icon(
                                      Icons.fullscreen,
                                      color: Colors.white,
                                    ),
                                    onPressed: toggleFullscreen,
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
          )
        else
          const Center(child: CircularProgressIndicator()),
      ],
    );
  }
}
