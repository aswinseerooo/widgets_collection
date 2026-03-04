import 'package:flutter/material.dart';
import 'package:widgets_collection/domain/entities/home/home_item_model.dart';
import 'package:widgets_collection/presentation/components/hide_keyboard_widget/hide_keyboard_widget.dart';
import 'package:widgets_collection/presentation/core/router/app_router.dart';
import 'package:widgets_collection/presentation/features/home/widgets/home_grid.dart';
import 'package:widgets_collection/presentation/features/home/widgets/home_header.dart';
import 'package:widgets_collection/presentation/features/home/widgets/home_searchfield.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final TextEditingController _searchController = TextEditingController();

  final List<HomeItemModel> _allItems = const [
    HomeItemModel(
      title: "Sliver Fill Remaining",
      icon: Icons.view_agenda,
      route: SliverFillRemainingRoute(),
    ),
    HomeItemModel(
      title: "Nested Scroll View",
      icon: Icons.layers,
      route: NestedScrollViewRoute(),
    ),
    HomeItemModel(
      title: "Sliver To Box Adapter",
      icon: Icons.view_stream,
      route: SliverToBoxAdapterRoute(),
    ),
    HomeItemModel(
      title: "Cupertino Sliver Navigation Bar",
      icon: Icons.phone_iphone,
      route: CupertinoSliverNavigationBarRoute(),
    ),
    HomeItemModel(
      title: "Cupertino Radio",
      icon: Icons.radio_button_checked,
      route: CupertinoRadioRoute(),
    ),
    HomeItemModel(
      title: "Cupertino Sheet Route",
      icon: Icons.swipe_up,
      route: CupertinoSheetRouteRoute(),
    ),
    HomeItemModel(
      title: "Cupertino Sliding Segmented Control",
      icon: Icons.segment,
      route: CupertinoSlidingSegmentedControlRoute(),
    ),
    HomeItemModel(
      title: "Cupertino Checkbox",
      icon: Icons.check_box,
      route: CupertinoCheckboxRoute(),
    ),
    HomeItemModel(
      title: "Cupertino Switch",
      icon: Icons.toggle_on,
      route: CupertinoSwitchRoute(),
    ),
    HomeItemModel(
      title: "Carousel View",
      icon: Icons.view_carousel,
      route: CarouselViewRoute(),
    ),
  ];

  late List<HomeItemModel> _filteredItems;

  @override
  void initState() {
    super.initState();
    _filteredItems = _allItems;
    _searchController.addListener(_onSearchChanged);
  }

  void _onSearchChanged() {
    final query = _searchController.text.toLowerCase();

    setState(() {
      _filteredItems = _allItems
          .where((item) => (item.title).toLowerCase().contains(query))
          .toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return HideKeyboardWidget(
      child: Column(
        children: [
          const SizedBox(height: 20),
          const HomeHeader(),
          const SizedBox(height: 20),
          HomeSearchField(controller: _searchController),
          const SizedBox(height: 20),
          Expanded(child: HomeGrid(items: _filteredItems)),
        ],
      ),
    );
  }
}
