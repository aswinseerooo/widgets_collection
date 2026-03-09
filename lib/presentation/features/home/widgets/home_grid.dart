import 'package:flutter/material.dart';
import 'package:widgets_collection/domain/entities/models/home/home_item_model.dart';
import 'package:widgets_collection/presentation/features/home/widgets/home_grid_item.dart';

class HomeGrid extends StatelessWidget {
  final List<HomeItemModel> items;

  const HomeGrid({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: items.isEmpty
          ? const Center(
              key: ValueKey("empty"),
              child: Text(
                "No results found",
                style: TextStyle(color: Colors.white),
              ),
            )
          : GridView.builder(
              key: ValueKey(items.length),
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
              itemCount: items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
                return HomeGridItem(item: items[index]);
              },
            ),
    );
  }
}
