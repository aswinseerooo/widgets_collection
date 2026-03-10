import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:widgets_collection/presentation/components/app_gradient_scaffold/app_gradient_scaffold.dart';
import 'package:widgets_collection/presentation/components/common_app_bar/common_app_bar.dart';
import 'package:widgets_collection/presentation/features/packages/mix/widgets/mix_reusable_styles_body.dart';

@RoutePage()
class MixReusableStylesScreen extends StatelessWidget {
  const MixReusableStylesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppGradientScaffold(
      appBar: CommonAppBar(title: "Reusable Styles"),
      body: MixReusableStylesBody(),
    );
  }
}
