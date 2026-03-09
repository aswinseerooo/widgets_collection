import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:widgets_collection/presentation/components/app_gradient_scaffold/app_gradient_scaffold.dart';
import 'package:widgets_collection/presentation/components/common_app_bar/common_app_bar.dart';
import 'widgets/video_player_body.dart';

@RoutePage()
class VideoPlayerScreen extends StatelessWidget {
  const VideoPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppGradientScaffold(
      appBar: CommonAppBar(title: "Video Player"),
      body: VideoPlayerBody(),
    );
  }
}
