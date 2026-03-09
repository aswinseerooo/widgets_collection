import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:widgets_collection/presentation/components/app_gradient_scaffold/app_gradient_scaffold.dart';
import 'package:widgets_collection/presentation/components/common_app_bar/common_app_bar.dart';
import 'package:widgets_collection/presentation/features/widgets/sliver_fill_remaining/widgets/sliver_fill_remaining_body.dart';

@RoutePage()
class SliverFillRemainingScreen extends StatefulWidget {
  const SliverFillRemainingScreen({super.key});

  @override
  State<SliverFillRemainingScreen> createState() =>
      _SliverFillRemainingScreenState();
}

class _SliverFillRemainingScreenState
    extends State<SliverFillRemainingScreen> {
  @override
  Widget build(BuildContext context) {
    return const AppGradientScaffold(
      appBar: CommonAppBar(title: "SliverFillRemaining"),
      body: SliverFillRemainingBody());
  }
}
