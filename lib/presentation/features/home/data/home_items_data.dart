import 'package:flutter/material.dart';
import 'package:widgets_collection/domain/entities/enums/enums.dart';
import 'package:widgets_collection/domain/entities/models/home/home_item_model.dart';
import 'package:widgets_collection/presentation/core/router/app_router.dart';

class HomeItemsData {
  static const items = [
    /// WIDGETS
    HomeItemModel(
      title: "Sliver Fill Remaining",
      icon: Icons.view_agenda,
      route: SliverFillRemainingRoute(),
      type: HomeTabType.widgets,
    ),
    HomeItemModel(
      title: "Nested Scroll View",
      icon: Icons.layers,
      route: NestedScrollViewRoute(),
      type: HomeTabType.widgets,
    ),
    HomeItemModel(
      title: "Sliver To Box Adapter",
      icon: Icons.view_stream,
      route: SliverToBoxAdapterRoute(),
      type: HomeTabType.widgets,
    ),
    HomeItemModel(
      title: "Cupertino Sliver Navigation Bar",
      icon: Icons.phone_iphone,
      route: CupertinoSliverNavigationBarRoute(),
      type: HomeTabType.widgets,
    ),
    HomeItemModel(
      title: "Cupertino Radio",
      icon: Icons.radio_button_checked,
      route: CupertinoRadioRoute(),
      type: HomeTabType.widgets,
    ),
    HomeItemModel(
      title: "Cupertino Sheet Route",
      icon: Icons.swipe_up,
      route: CupertinoSheetRouteRoute(),
      type: HomeTabType.widgets,
    ),
    HomeItemModel(
      title: "Cupertino Sliding Segmented Control",
      icon: Icons.segment,
      route: CupertinoSlidingSegmentedControlRoute(),
      type: HomeTabType.widgets,
    ),
    HomeItemModel(
      title: "Cupertino Checkbox",
      icon: Icons.check_box,
      route: CupertinoCheckboxRoute(),
      type: HomeTabType.widgets,
    ),
    HomeItemModel(
      title: "Cupertino Switch",
      icon: Icons.toggle_on,
      route: CupertinoSwitchRoute(),
      type: HomeTabType.widgets,
    ),
    HomeItemModel(
      title: "Carousel View",
      icon: Icons.view_carousel,
      route: CarouselViewRoute(),
      type: HomeTabType.widgets,
    ),
    HomeItemModel(
      title: "SearchBar & SearchAnchor",
      icon: Icons.search,
      route: SearchRoute(),
      type: HomeTabType.widgets,
    ),

    /// PACKAGES
    HomeItemModel(
      title: "Video Player",
      icon: Icons.video_library,
      route: VideoPlayerRoute(),
      type: HomeTabType.packages,
    ),
    HomeItemModel(
      title: "Mix Package",
      icon: Icons.palette,
      route: MixOverviewRoute(),
      type: HomeTabType.packages,
    ),
    HomeItemModel(
      title: "Firebase AI (Gemini)",
      icon: Icons.smart_toy,
      route: FirebaseAIRoute(),
      type: HomeTabType.packages,
    ),

    /// TECHNIQUES
    HomeItemModel(
      title: "MediaQuery.propertyOf",
      icon: Icons.devices,
      route: MediaQueryPropertyOfRoute(),
      type: HomeTabType.techniques,
    ),
    HomeItemModel(
      title: "UnmodifiableListView",
      icon: Icons.lock,
      route: UnmodifiableListViewRoute(),
      type: HomeTabType.techniques,
    ),
    HomeItemModel(
      title: "Uint8List",
      icon: Icons.memory,
      route: Uint8ListRoute(),
      type: HomeTabType.techniques,
    ),
    HomeItemModel(
      title: "Completer",
      icon: Icons.pending_actions,
      route: CompleterRoute(),
      type: HomeTabType.techniques,
    ),
    HomeItemModel(
      title: "Future.wait",
      icon: Icons.sync,
      route: FutureWaitRoute(),
      type: HomeTabType.techniques,
    ),
  ];
}
