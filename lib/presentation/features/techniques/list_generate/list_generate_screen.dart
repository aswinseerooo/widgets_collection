import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:widgets_collection/presentation/features/techniques/list_generate/widgets/list_generate_body.dart';
import '../../../components/common_app_bar/common_app_bar.dart';
import '../../../components/app_gradient_scaffold/app_gradient_scaffold.dart';

@RoutePage()
class ListGenerateScreen extends StatelessWidget {
  const ListGenerateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppGradientScaffold(
      appBar: CommonAppBar(title: "List.generate"),
      body: ListGenerateBody(),
    );
  }
}
