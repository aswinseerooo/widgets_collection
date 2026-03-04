import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:widgets_collection/presentation/components/app_gradient_scaffold/app_gradient_scaffold.dart';
import 'package:widgets_collection/presentation/components/common_app_bar/common_app_bar.dart';
import 'package:widgets_collection/presentation/features/carousal_view/widgets/carousal_view_body.dart';

@RoutePage()
class CarouselViewScreen extends StatelessWidget {
  const CarouselViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppGradientScaffold(
      appBar: CommonAppBar(title: "CarouselView"),
      body: CarouselViewBody(),
    );
  }
}

enum CarouselLayoutType { uncontained, hero, multiBrowse, fullScreen }
