import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:widgets_collection/presentation/components/app_gradient_scaffold/app_gradient_scaffold.dart';
import 'package:widgets_collection/presentation/components/common_app_bar/common_app_bar.dart';
import 'widgets/media_query_property_of_body.dart';

@RoutePage()
class MediaQueryPropertyOfScreen extends StatelessWidget {
  const MediaQueryPropertyOfScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppGradientScaffold(
      appBar: CommonAppBar(title: "MediaQuery.propertyOf"),
      body: MediaQueryPropertyOfBody(),
    );
  }
}
