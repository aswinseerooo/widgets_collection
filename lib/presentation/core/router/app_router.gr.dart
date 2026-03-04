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
