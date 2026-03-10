import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:widgets_collection/presentation/core/router/app_router.dart';
import 'package:widgets_collection/presentation/features/packages/mix/widgets/mix_demo_tile.dart';

class MixOverviewBody extends StatelessWidget {
  const MixOverviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          "Mix Package",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white,
          ),
        ),

        const SizedBox(height: 12),

        const Text(
          "Mix is a styling system for Flutter that helps developers "
          "create reusable UI styles. Instead of repeating decoration, "
          "padding, colors, and typography across widgets, Mix allows "
          "defining styles once and reusing them.",
          style: TextStyle(fontSize: 16, height: 1.6, color: Colors.white),
        ),

        const SizedBox(height: 24),

        const Text(
          "Available Demos",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),

        const SizedBox(height: 12),

        MixDemoTile(
          title: "Mix Variants",
          subtitle: "Conditional styling using variants",
          onTap: () {
            context.pushRoute(const MixVariantsRoute());
          },
        ),

        MixDemoTile(
          title: "Reusable Styles",
          subtitle: "Create reusable UI styles",
          onTap: () {
            context.pushRoute(const MixReusableStylesRoute());
          },
        ),
      ],
    );
  }
}
