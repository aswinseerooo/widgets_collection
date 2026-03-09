import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:widgets_collection/presentation/components/app_gradient_scaffold/app_gradient_scaffold.dart';
import 'package:widgets_collection/presentation/features/widgets/nested_scroll_view/widgets/nested_scroll_view_body.dart';

@RoutePage()
class NestedScrollViewScreen extends StatelessWidget {
  const NestedScrollViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppGradientScaffold(body: NestedScrollViewBody());
  }
}
