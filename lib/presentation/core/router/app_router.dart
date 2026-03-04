import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:widgets_collection/presentation/features/carousal_view/screens/carousal_layout_screen.dart';
import 'package:widgets_collection/presentation/features/carousal_view/screens/carousal_view_screen.dart';
import 'package:widgets_collection/presentation/features/cupertino_checkbox/cupertino_checkbox_screen.dart';
import 'package:widgets_collection/presentation/features/cupertino_radio/cupertino_radio_screen.dart';
import 'package:widgets_collection/presentation/features/cupertino_sheet_route/cupertino_sheet_route_screen.dart';
import 'package:widgets_collection/presentation/features/cupertino_sliding_segmented_control/cupertino_sliding_segmented_control_screen.dart';
import 'package:widgets_collection/presentation/features/cupertino_sliver_navigation_bar/cupertino_sliver_navigation_bar_screen.dart';
import 'package:widgets_collection/presentation/features/cupertino_switch/cupertino_switch_screen.dart';
import 'package:widgets_collection/presentation/features/home/home_screen.dart';
import 'package:widgets_collection/presentation/features/nested_scroll_view/nested_scroll_view_screen.dart';
import 'package:widgets_collection/presentation/features/sliver_fill_remaining/sliver_fill_remaining_screen.dart';
import 'package:widgets_collection/presentation/features/sliver_to_box/sliver_to_box_adapter_screen.dart';
import 'package:widgets_collection/presentation/features/splash/splash_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: SliverFillRemainingRoute.page),
    AutoRoute(page: NestedScrollViewRoute.page),
    AutoRoute(page: SliverToBoxAdapterRoute.page),
    AutoRoute(page: CupertinoSliverNavigationBarRoute.page),
    AutoRoute(page: CupertinoRadioRoute.page),
    AutoRoute(page: CupertinoSheetRouteRoute.page),
    AutoRoute(page: CupertinoSlidingSegmentedControlRoute.page),
    AutoRoute(page: CupertinoCheckboxRoute.page),
    AutoRoute(page: CupertinoSwitchRoute.page),
    AutoRoute(page: CarouselViewRoute.page),
    AutoRoute(page: CarouselLayoutRoute.page),
  ];
}
