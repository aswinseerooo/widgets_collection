import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:widgets_collection/presentation/core/router/app_router.dart';
import 'package:widgets_collection/presentation/features/carousal_view/screens/carousal_view_screen.dart';

class CarouselViewBody extends StatelessWidget {
  const CarouselViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final layouts = [
      ("Uncontained Layout", CarouselLayoutType.uncontained),
      ("Hero Layout", CarouselLayoutType.hero),
      ("MultiBrowse Layout", CarouselLayoutType.multiBrowse),
      ("FullScreen Layout", CarouselLayoutType.fullScreen),
    ];

    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: layouts.length,
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final item = layouts[index];

        return InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: () {
            context.pushRoute(CarouselLayoutRoute(layoutType: item.$2));
          },
          child: Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Text(
              item.$1,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        );
      },
    );
  }
}
