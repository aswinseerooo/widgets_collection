import 'package:flutter/material.dart';
import 'package:widgets_collection/presentation/core/utils/utility.dart';

class HideKeyboardWidget extends StatelessWidget {
  const HideKeyboardWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Utility.hideKeyboard(context);
      },
      behavior: HitTestBehavior.opaque,
      child: child,
    );
  }
}
