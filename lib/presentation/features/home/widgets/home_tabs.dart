import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets_collection/domain/entities/enums/enums.dart';

class HomeTabs extends StatelessWidget {
  final HomeTabType selectedTab;
  final ValueChanged<HomeTabType> onTabChanged;

  const HomeTabs({
    super.key,
    required this.selectedTab,
    required this.onTabChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoSlidingSegmentedControl<HomeTabType>(
      groupValue: selectedTab,
      backgroundColor: Colors.white.withValues(alpha: 0.2),
      thumbColor: Colors.white,
      children: const {
        HomeTabType.widgets: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Text("Widgets"),
        ),
        HomeTabType.packages: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Text("Packages"),
        ),
        HomeTabType.techniques: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Text("Techniques"),
        ),
      },
      onValueChanged: (value) {
        if (value != null) {
          onTabChanged(value);
        }
      },
    );
  }
}
