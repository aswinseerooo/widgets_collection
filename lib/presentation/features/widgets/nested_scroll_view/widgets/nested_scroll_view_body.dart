import 'package:flutter/material.dart';
import 'package:widgets_collection/presentation/features/widgets/nested_scroll_view/widgets/nested_scroll_view_explanation.dart';
import 'package:widgets_collection/presentation/features/widgets/nested_scroll_view/widgets/nested_scroll_view_tab_list_content.dart';

class NestedScrollViewBody extends StatelessWidget {
  const NestedScrollViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            const SliverToBoxAdapter(child: NestedScrollViewExplanation()),
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverAppBar(
                backgroundColor: Colors.transparent,
                pinned: true,
                floating: true,
                elevation: 0,
                iconTheme: IconThemeData(color: Colors.white),
                title: const Text(
                  "NestedScrollView",
                  style: TextStyle(color: Colors.white),
                ),
                bottom: const TabBar(
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(
                      child: Text(
                        "Tab 1",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Tab 2",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: const TabBarView(
          children: [
            NestedScrollViewTabListContent(label: "Tab 1"),
            NestedScrollViewTabListContent(label: "Tab 2"),
          ],
        ),
      ),
    );
  }
}
