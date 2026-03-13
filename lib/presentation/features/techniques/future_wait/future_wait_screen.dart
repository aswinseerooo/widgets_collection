import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:widgets_collection/presentation/components/app_gradient_scaffold/app_gradient_scaffold.dart';
import 'package:widgets_collection/presentation/components/common_app_bar/common_app_bar.dart';
import 'package:widgets_collection/presentation/features/techniques/future_wait/widgets/future_wait_body.dart';

@RoutePage()
class FutureWaitScreen extends StatelessWidget {
  const FutureWaitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppGradientScaffold(
      safeAreaBottom: false,
      appBar: CommonAppBar(title: "Future.wait"),
      body: FutureWaitBody(),
    );
  }
}
