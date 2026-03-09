import 'package:flutter/material.dart';
import 'package:widgets_collection/domain/entities/enums/enums.dart';
import 'package:widgets_collection/domain/entities/models/home/home_item_model.dart';
import 'package:widgets_collection/presentation/components/hide_keyboard_widget/hide_keyboard_widget.dart';
import 'package:widgets_collection/presentation/features/home/data/home_items_data.dart';
import 'package:widgets_collection/presentation/features/home/widgets/home_grid.dart';
import 'package:widgets_collection/presentation/features/home/widgets/home_header.dart';
import 'package:widgets_collection/presentation/features/home/widgets/home_searchfield.dart';
import 'package:widgets_collection/presentation/features/home/widgets/home_tabs.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final TextEditingController _searchController = TextEditingController();

  HomeTabType _selectedTab = HomeTabType.widgets;

  List<HomeItemModel> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    _applyFilters();
    _searchController.addListener(_applyFilters);
  }

  void _applyFilters() {
    final query = _searchController.text.toLowerCase();

    final itemsByTab = HomeItemsData.items
        .where((item) => item.type == _selectedTab)
        .toList();

    setState(() {
      _filteredItems = itemsByTab
          .where((item) => item.title.toLowerCase().contains(query))
          .toList();
    });
  }

  void _onTabChanged(HomeTabType tab) {
    setState(() {
      _selectedTab = tab;
    });
    _applyFilters();
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

          Center(
            child: HomeTabs(
              selectedTab: _selectedTab,
              onTabChanged: _onTabChanged,
            ),
          ),

          const SizedBox(height: 20),

          HomeSearchField(controller: _searchController),

          const SizedBox(height: 20),

          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 250),
              child: HomeGrid(
                key: ValueKey(_selectedTab),
                items: _filteredItems,
              ),
            ),
          )
        ],
      ),
    );
  }
}
