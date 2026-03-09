import 'package:flutter/material.dart';
import 'package:widgets_collection/presentation/features/techniques/media_query_property_of/widgets/media_query_property_of_info_tile.dart';
import 'media_query_property_of_explanation_section.dart';

class MediaQueryPropertyOfBody extends StatelessWidget {
  const MediaQueryPropertyOfBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final padding = MediaQuery.paddingOf(context);
    final viewInsets = MediaQuery.viewInsetsOf(context);
    final orientation = MediaQuery.orientationOf(context);
    final pixelRatio = MediaQuery.devicePixelRatioOf(context);
    final textScaler = MediaQuery.textScalerOf(context);

    return ListView(
      children: [
        const MediaQueryPropertyOfExplanationSection(),

        const SizedBox(height: 10),

        MediaQueryPropertyOfInfoTile(
          title: "Screen Size",
          value:
              "${size.width.toStringAsFixed(0)} x ${size.height.toStringAsFixed(0)}",
        ),

        MediaQueryPropertyOfInfoTile(
          title: "Orientation",
          value: orientation.name,
        ),

        MediaQueryPropertyOfInfoTile(
          title: "Device Pixel Ratio",
          value: pixelRatio.toString(),
        ),

        MediaQueryPropertyOfInfoTile(
          title: "Status Bar Padding",
          value: padding.top.toString(),
        ),

        MediaQueryPropertyOfInfoTile(
          title: "Keyboard Insets",
          value: viewInsets.bottom.toString(),
        ),

        MediaQueryPropertyOfInfoTile(
          title: "Text Scale Factor",
          value: textScaler.scale(1).toString(),
        ),
      ],
    );
  }
}