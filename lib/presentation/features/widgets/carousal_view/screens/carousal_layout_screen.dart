import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:widgets_collection/presentation/components/app_gradient_scaffold/app_gradient_scaffold.dart';
import 'package:widgets_collection/presentation/components/common_app_bar/common_app_bar.dart';
import 'package:widgets_collection/presentation/components/extensions/string_extensions.dart';
import 'package:widgets_collection/presentation/features/widgets/carousal_view/screens/carousal_view_screen.dart';
import 'package:widgets_collection/presentation/features/widgets/carousal_view/widgets/layouts/fullscreen_layout_widget.dart';
import 'package:widgets_collection/presentation/features/widgets/carousal_view/widgets/layouts/hero_layout_widget.dart';
import 'package:widgets_collection/presentation/features/widgets/carousal_view/widgets/layouts/multi_browse_layout_widget.dart';
import 'package:widgets_collection/presentation/features/widgets/carousal_view/widgets/layouts/uncontained_layout_widget.dart';

@RoutePage()
class CarouselLayoutScreen extends StatelessWidget {
  final CarouselLayoutType layoutType;

  const CarouselLayoutScreen({super.key, required this.layoutType});

  @override
  Widget build(BuildContext context) {
    final layoutWidget = _buildLayout();

    return AppGradientScaffold(
      appBar: CommonAppBar(title: layoutType.name.toTitleCase()),
      body: layoutType == CarouselLayoutType.fullScreen
          ? layoutWidget
          : Center(child: SizedBox(height: 200, child: layoutWidget)),
    );
  }

  Widget _buildLayout() {
    switch (layoutType) {
      case CarouselLayoutType.uncontained:
        return const UncontainedLayoutWidget();

      case CarouselLayoutType.hero:
        return const HeroLayoutWidget();

      case CarouselLayoutType.multiBrowse:
        return const MultiBrowseLayoutWidget();

      case CarouselLayoutType.fullScreen:
        return const FullScreenLayoutWidget();
    }
  }
}
