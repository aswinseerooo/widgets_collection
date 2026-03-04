import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widgets_collection/presentation/components/gradient_container/gradient_container.dart';

class AppGradientScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final bool safeArea;
  final bool safeAreaTop;
  final bool safeAreaBottom;
  final bool safeAreaLeft;
  final bool safeAreaRight;

  const AppGradientScaffold({
    super.key,
    required this.body,
    this.appBar,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.safeArea = true,
    this.safeAreaTop = true,
    this.safeAreaBottom = true,
    this.safeAreaLeft = true,
    this.safeAreaRight = true,
  });

  @override
  Widget build(BuildContext context) {
    final content = safeArea
        ? SafeArea(
            top: safeAreaTop,
            bottom: safeAreaBottom,
            left: safeAreaLeft,
            right: safeAreaRight,
            child: body,
          )
        : body;

    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        // This makes iOS status bar icons WHITE
        statusBarBrightness: Brightness.dark,
        // This makes Android status bar icons WHITE
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        appBar: appBar,
        floatingActionButton: floatingActionButton,
        bottomNavigationBar: bottomNavigationBar,
        extendBodyBehindAppBar: true,
        body: GradientContainer(content: content),
      ),
    );
  }
}
