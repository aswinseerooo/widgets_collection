import 'dart:async';

import 'package:flutter/material.dart';
import '../carousel_item_card.dart';

class HeroLayoutWidget extends StatefulWidget {
  const HeroLayoutWidget({super.key});

  @override
  State<HeroLayoutWidget> createState() => _HeroLayoutWidgetState();
}

class _HeroLayoutWidgetState extends State<HeroLayoutWidget> {
  final CarouselController controller = CarouselController();

  Timer? autoScrollTimer;

  int currentIndex = 0;

  final List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.teal,
  ];

  @override
  void initState() {
    super.initState();
    startAutoScroll();
  }

  void startAutoScroll() {
    autoScrollTimer = Timer.periodic(const Duration(seconds: 3), (timer) {
      currentIndex = (currentIndex + 1) % colors.length;

      controller.animateToItem(
        currentIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    autoScrollTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CarouselView.weighted(
      controller: controller,
      flexWeights: const [1, 7, 1],
      children: List.generate(
        colors.length,
        (index) => CarouselItemCard(color: colors[index], title: "Hero $index"),
      ),
    );
  }
}
