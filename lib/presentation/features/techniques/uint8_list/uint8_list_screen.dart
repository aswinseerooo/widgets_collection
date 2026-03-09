import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:widgets_collection/presentation/components/app_gradient_scaffold/app_gradient_scaffold.dart';
import 'package:widgets_collection/presentation/components/common_app_bar/common_app_bar.dart';
import 'widgets/uint8_list_body.dart';

@RoutePage()
class Uint8ListScreen extends StatelessWidget {
  const Uint8ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppGradientScaffold(
      appBar: CommonAppBar(title: "Uint8List"),
      body: Uint8ListBody(),
    );
  }
}
