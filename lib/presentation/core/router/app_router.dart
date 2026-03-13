import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:widgets_collection/presentation/features/packages/firebase_ai/firebase_ai_screen.dart';
import 'package:widgets_collection/presentation/features/packages/mix/screens/mix_overview_screen.dart';
import 'package:widgets_collection/presentation/features/packages/mix/screens/mix_reusable_styles_screen.dart';
import 'package:widgets_collection/presentation/features/packages/mix/screens/mix_variants_screen.dart';
import 'package:widgets_collection/presentation/features/packages/video_player/widgets/fullscreen_video_player.dart';
import 'package:widgets_collection/presentation/features/techniques/completer/completer_screen.dart';
import 'package:widgets_collection/presentation/features/techniques/future_wait/future_wait_screen.dart';
import 'package:widgets_collection/presentation/features/techniques/media_query_property_of/media_query_property_of_screen.dart';
import 'package:widgets_collection/presentation/features/techniques/uint8_list/uint8_list_screen.dart';
import 'package:widgets_collection/presentation/features/techniques/unmodifiable_list_view/unmodifiable_list_view_screen.dart';
import 'package:widgets_collection/presentation/features/widgets/carousal_view/screens/carousal_layout_screen.dart';
import 'package:widgets_collection/presentation/features/widgets/carousal_view/screens/carousal_view_screen.dart';
import 'package:widgets_collection/presentation/features/widgets/cupertino_checkbox/cupertino_checkbox_screen.dart';
import 'package:widgets_collection/presentation/features/widgets/cupertino_radio/cupertino_radio_screen.dart';
import 'package:widgets_collection/presentation/features/widgets/cupertino_sheet_route/cupertino_sheet_route_screen.dart';
import 'package:widgets_collection/presentation/features/widgets/cupertino_sliding_segmented_control/cupertino_sliding_segmented_control_screen.dart';
import 'package:widgets_collection/presentation/features/widgets/cupertino_sliver_navigation_bar/cupertino_sliver_navigation_bar_screen.dart';
import 'package:widgets_collection/presentation/features/widgets/cupertino_switch/cupertino_switch_screen.dart';
import 'package:widgets_collection/presentation/features/home/home_screen.dart';
import 'package:widgets_collection/presentation/features/widgets/nested_scroll_view/nested_scroll_view_screen.dart';
import 'package:widgets_collection/presentation/features/packages/video_player/video_player_screen.dart';
import 'package:widgets_collection/presentation/features/widgets/search/search_screen.dart';
import 'package:widgets_collection/presentation/features/widgets/sliver_fill_remaining/sliver_fill_remaining_screen.dart';
import 'package:widgets_collection/presentation/features/widgets/sliver_to_box/sliver_to_box_adapter_screen.dart';
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
    AutoRoute(page: SearchRoute.page),
    AutoRoute(page: VideoPlayerRoute.page),
    AutoRoute(page: FullscreenVideoPlayerRoute.page),
    AutoRoute(page: MediaQueryPropertyOfRoute.page),
    AutoRoute(page: UnmodifiableListViewRoute.page),
    AutoRoute(page: Uint8ListRoute.page),
    AutoRoute(page: MixOverviewRoute.page),
    AutoRoute(page: MixVariantsRoute.page),
    AutoRoute(page: MixReusableStylesRoute.page),
    AutoRoute(page: CompleterRoute.page),
    AutoRoute(page: FirebaseAIRoute.page),
    AutoRoute(page: FutureWaitRoute.page),
  ];
}
