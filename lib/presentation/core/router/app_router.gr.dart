// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [CarouselLayoutScreen]
class CarouselLayoutRoute extends PageRouteInfo<CarouselLayoutRouteArgs> {
  CarouselLayoutRoute({
    Key? key,
    required CarouselLayoutType layoutType,
    List<PageRouteInfo>? children,
  }) : super(
         CarouselLayoutRoute.name,
         args: CarouselLayoutRouteArgs(key: key, layoutType: layoutType),
         initialChildren: children,
       );

  static const String name = 'CarouselLayoutRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CarouselLayoutRouteArgs>();
      return CarouselLayoutScreen(key: args.key, layoutType: args.layoutType);
    },
  );
}

class CarouselLayoutRouteArgs {
  const CarouselLayoutRouteArgs({this.key, required this.layoutType});

  final Key? key;

  final CarouselLayoutType layoutType;

  @override
  String toString() {
    return 'CarouselLayoutRouteArgs{key: $key, layoutType: $layoutType}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CarouselLayoutRouteArgs) return false;
    return key == other.key && layoutType == other.layoutType;
  }

  @override
  int get hashCode => key.hashCode ^ layoutType.hashCode;
}

/// generated route for
/// [CarouselViewScreen]
class CarouselViewRoute extends PageRouteInfo<void> {
  const CarouselViewRoute({List<PageRouteInfo>? children})
    : super(CarouselViewRoute.name, initialChildren: children);

  static const String name = 'CarouselViewRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CarouselViewScreen();
    },
  );
}

/// generated route for
/// [CompleterScreen]
class CompleterRoute extends PageRouteInfo<void> {
  const CompleterRoute({List<PageRouteInfo>? children})
    : super(CompleterRoute.name, initialChildren: children);

  static const String name = 'CompleterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CompleterScreen();
    },
  );
}

/// generated route for
/// [CupertinoCheckboxScreen]
class CupertinoCheckboxRoute extends PageRouteInfo<void> {
  const CupertinoCheckboxRoute({List<PageRouteInfo>? children})
    : super(CupertinoCheckboxRoute.name, initialChildren: children);

  static const String name = 'CupertinoCheckboxRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CupertinoCheckboxScreen();
    },
  );
}

/// generated route for
/// [CupertinoRadioScreen]
class CupertinoRadioRoute extends PageRouteInfo<void> {
  const CupertinoRadioRoute({List<PageRouteInfo>? children})
    : super(CupertinoRadioRoute.name, initialChildren: children);

  static const String name = 'CupertinoRadioRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CupertinoRadioScreen();
    },
  );
}

/// generated route for
/// [CupertinoSheetRouteScreen]
class CupertinoSheetRouteRoute extends PageRouteInfo<void> {
  const CupertinoSheetRouteRoute({List<PageRouteInfo>? children})
    : super(CupertinoSheetRouteRoute.name, initialChildren: children);

  static const String name = 'CupertinoSheetRouteRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CupertinoSheetRouteScreen();
    },
  );
}

/// generated route for
/// [CupertinoSlidingSegmentedControlScreen]
class CupertinoSlidingSegmentedControlRoute extends PageRouteInfo<void> {
  const CupertinoSlidingSegmentedControlRoute({List<PageRouteInfo>? children})
    : super(
        CupertinoSlidingSegmentedControlRoute.name,
        initialChildren: children,
      );

  static const String name = 'CupertinoSlidingSegmentedControlRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CupertinoSlidingSegmentedControlScreen();
    },
  );
}

/// generated route for
/// [CupertinoSliverNavigationBarScreen]
class CupertinoSliverNavigationBarRoute extends PageRouteInfo<void> {
  const CupertinoSliverNavigationBarRoute({List<PageRouteInfo>? children})
    : super(CupertinoSliverNavigationBarRoute.name, initialChildren: children);

  static const String name = 'CupertinoSliverNavigationBarRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CupertinoSliverNavigationBarScreen();
    },
  );
}

/// generated route for
/// [CupertinoSwitchScreen]
class CupertinoSwitchRoute extends PageRouteInfo<void> {
  const CupertinoSwitchRoute({List<PageRouteInfo>? children})
    : super(CupertinoSwitchRoute.name, initialChildren: children);

  static const String name = 'CupertinoSwitchRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CupertinoSwitchScreen();
    },
  );
}

/// generated route for
/// [FirebaseAIScreen]
class FirebaseAIRoute extends PageRouteInfo<void> {
  const FirebaseAIRoute({List<PageRouteInfo>? children})
    : super(FirebaseAIRoute.name, initialChildren: children);

  static const String name = 'FirebaseAIRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FirebaseAIScreen();
    },
  );
}

/// generated route for
/// [FullscreenVideoPlayerScreen]
class FullscreenVideoPlayerRoute
    extends PageRouteInfo<FullscreenVideoPlayerRouteArgs> {
  FullscreenVideoPlayerRoute({
    Key? key,
    required VideoPlayerController controller,
    List<PageRouteInfo>? children,
  }) : super(
         FullscreenVideoPlayerRoute.name,
         args: FullscreenVideoPlayerRouteArgs(key: key, controller: controller),
         initialChildren: children,
       );

  static const String name = 'FullscreenVideoPlayerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FullscreenVideoPlayerRouteArgs>();
      return FullscreenVideoPlayerScreen(
        key: args.key,
        controller: args.controller,
      );
    },
  );
}

class FullscreenVideoPlayerRouteArgs {
  const FullscreenVideoPlayerRouteArgs({this.key, required this.controller});

  final Key? key;

  final VideoPlayerController controller;

  @override
  String toString() {
    return 'FullscreenVideoPlayerRouteArgs{key: $key, controller: $controller}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! FullscreenVideoPlayerRouteArgs) return false;
    return key == other.key && controller == other.controller;
  }

  @override
  int get hashCode => key.hashCode ^ controller.hashCode;
}

/// generated route for
/// [FutureWaitScreen]
class FutureWaitRoute extends PageRouteInfo<void> {
  const FutureWaitRoute({List<PageRouteInfo>? children})
    : super(FutureWaitRoute.name, initialChildren: children);

  static const String name = 'FutureWaitRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FutureWaitScreen();
    },
  );
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [MediaQueryPropertyOfScreen]
class MediaQueryPropertyOfRoute extends PageRouteInfo<void> {
  const MediaQueryPropertyOfRoute({List<PageRouteInfo>? children})
    : super(MediaQueryPropertyOfRoute.name, initialChildren: children);

  static const String name = 'MediaQueryPropertyOfRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MediaQueryPropertyOfScreen();
    },
  );
}

/// generated route for
/// [MixOverviewScreen]
class MixOverviewRoute extends PageRouteInfo<void> {
  const MixOverviewRoute({List<PageRouteInfo>? children})
    : super(MixOverviewRoute.name, initialChildren: children);

  static const String name = 'MixOverviewRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MixOverviewScreen();
    },
  );
}

/// generated route for
/// [MixReusableStylesScreen]
class MixReusableStylesRoute extends PageRouteInfo<void> {
  const MixReusableStylesRoute({List<PageRouteInfo>? children})
    : super(MixReusableStylesRoute.name, initialChildren: children);

  static const String name = 'MixReusableStylesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MixReusableStylesScreen();
    },
  );
}

/// generated route for
/// [MixVariantsScreen]
class MixVariantsRoute extends PageRouteInfo<void> {
  const MixVariantsRoute({List<PageRouteInfo>? children})
    : super(MixVariantsRoute.name, initialChildren: children);

  static const String name = 'MixVariantsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MixVariantsScreen();
    },
  );
}

/// generated route for
/// [NestedScrollViewScreen]
class NestedScrollViewRoute extends PageRouteInfo<void> {
  const NestedScrollViewRoute({List<PageRouteInfo>? children})
    : super(NestedScrollViewRoute.name, initialChildren: children);

  static const String name = 'NestedScrollViewRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const NestedScrollViewScreen();
    },
  );
}

/// generated route for
/// [SearchScreen]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
    : super(SearchRoute.name, initialChildren: children);

  static const String name = 'SearchRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SearchScreen();
    },
  );
}

/// generated route for
/// [SliverFillRemainingScreen]
class SliverFillRemainingRoute extends PageRouteInfo<void> {
  const SliverFillRemainingRoute({List<PageRouteInfo>? children})
    : super(SliverFillRemainingRoute.name, initialChildren: children);

  static const String name = 'SliverFillRemainingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SliverFillRemainingScreen();
    },
  );
}

/// generated route for
/// [SliverToBoxAdapterScreen]
class SliverToBoxAdapterRoute extends PageRouteInfo<void> {
  const SliverToBoxAdapterRoute({List<PageRouteInfo>? children})
    : super(SliverToBoxAdapterRoute.name, initialChildren: children);

  static const String name = 'SliverToBoxAdapterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SliverToBoxAdapterScreen();
    },
  );
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashScreen();
    },
  );
}

/// generated route for
/// [Uint8ListScreen]
class Uint8ListRoute extends PageRouteInfo<void> {
  const Uint8ListRoute({List<PageRouteInfo>? children})
    : super(Uint8ListRoute.name, initialChildren: children);

  static const String name = 'Uint8ListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const Uint8ListScreen();
    },
  );
}

/// generated route for
/// [UnmodifiableListViewScreen]
class UnmodifiableListViewRoute extends PageRouteInfo<void> {
  const UnmodifiableListViewRoute({List<PageRouteInfo>? children})
    : super(UnmodifiableListViewRoute.name, initialChildren: children);

  static const String name = 'UnmodifiableListViewRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const UnmodifiableListViewScreen();
    },
  );
}

/// generated route for
/// [VideoPlayerScreen]
class VideoPlayerRoute extends PageRouteInfo<void> {
  const VideoPlayerRoute({List<PageRouteInfo>? children})
    : super(VideoPlayerRoute.name, initialChildren: children);

  static const String name = 'VideoPlayerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const VideoPlayerScreen();
    },
  );
}
