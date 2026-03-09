import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:widgets_collection/presentation/core/router/app_router.dart';
import 'package:widgets_collection/presentation/features/widgets/carousal_view/screens/carousal_view_screen.dart';

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

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "CarouselView is a Material 3 widget used to create horizontally "
              "scrollable collections of items.\n\n"
              "It allows users to browse through content such as cards, images, "
              "or products in a carousel-style layout.\n\n"
              "CarouselView supports different layout patterns like uncontained, "
              "hero, multi-browse, and fullscreen by adjusting item sizes "
              "or using weighted layouts.\n\n"
              "It can also be controlled programmatically using a CarouselController "
              "to animate to specific items, create auto-scrolling carousels, "
              "or build interactive UI experiences.",
              style: TextStyle(fontSize: 16, height: 1.6, color: Colors.white),
            ),
            const SizedBox(height: 30),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
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
            ),
          ],
        ),
      ),
    );
  }
}
