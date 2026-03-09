import 'package:flutter/material.dart';
import 'package:widgets_collection/presentation/features/widgets/sliver_fill_remaining/widgets/sliver_fill_remaining_bottom_example_section.dart';
import 'package:widgets_collection/presentation/features/widgets/sliver_fill_remaining/widgets/sliver_fill_remaining_explanation_section.dart';

class SliverFillRemainingBody extends StatelessWidget {
  const SliverFillRemainingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: SliverFillRemainingExplanationSection(),
        ),

        SliverFillRemaining(
          hasScrollBody: false,
          child: SliverFillRemainingBottomExampleSection(),
        ),
      ],
    );
  }
}
