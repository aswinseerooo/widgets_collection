import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:widgets_collection/presentation/components/app_gradient_scaffold/app_gradient_scaffold.dart';
import 'package:widgets_collection/presentation/components/common_app_bar/common_app_bar.dart';
import 'package:widgets_collection/presentation/features/widgets/dropdown_menu/widgets/dropdown_menu_body.dart';

@RoutePage()
class DropdownMenuScreen extends StatelessWidget {
  const DropdownMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppGradientScaffold(
      appBar: CommonAppBar(title: "DropdownMenu"),
      body: DropdownMenuBody(),
    );
  }
}
