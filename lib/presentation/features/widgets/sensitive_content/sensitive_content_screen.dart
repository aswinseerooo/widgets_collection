import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:widgets_collection/presentation/components/app_gradient_scaffold/app_gradient_scaffold.dart';
import 'package:widgets_collection/presentation/components/common_app_bar/common_app_bar.dart';
import 'package:widgets_collection/presentation/features/widgets/sensitive_content/widgets/sensitive_content_body.dart';

@RoutePage()
class SensitiveContentScreen extends StatelessWidget {
  const SensitiveContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppGradientScaffold(
      appBar: CommonAppBar(title: 'Sensitive Content'),
      body: SensitiveContentBody(),
    );
  }
}
