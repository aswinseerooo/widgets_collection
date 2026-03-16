import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:widgets_collection/presentation/features/techniques/tween/widgets/tween_body.dart';
import '../../../components/app_gradient_scaffold/app_gradient_scaffold.dart';
import '../../../components/common_app_bar/common_app_bar.dart';

@RoutePage()
class TweenScreen extends StatelessWidget {
  const TweenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppGradientScaffold(
      appBar: CommonAppBar(title: "Tween"),
      body: TweenBody(),
    );
  }
}
