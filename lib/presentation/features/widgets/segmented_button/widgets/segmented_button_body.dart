import 'package:flutter/material.dart';
import 'package:widgets_collection/domain/entities/enums/enums.dart';
import 'segmented_button_explanation_section.dart';

class SegmentedButtonBody extends StatefulWidget {
  const SegmentedButtonBody({super.key});

  @override
  State<SegmentedButtonBody> createState() => _SegmentedButtonBodyState();
}

class _SegmentedButtonBodyState extends State<SegmentedButtonBody> {
  Set<DeliveryType> deliverySelection = {DeliveryType.delivery};
  Set<FilterType> filters = {FilterType.veg};

  Set<int> iconSelection = {0};

  ButtonStyle segmentedStyle = ButtonStyle(
    backgroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.white.withValues(alpha: 0.25);
      }
      return Colors.white.withValues(alpha: 0.05);
    }),
    foregroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.white;
      }
      return Colors.white70;
    }),
    side: WidgetStateProperty.all(
      BorderSide(color: Colors.white.withValues(alpha: 0.2)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SegmentedButtonExplanationSection(),

        const SizedBox(height: 20),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Single Selection",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),

        const SizedBox(height: 10),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: SegmentedButton<DeliveryType>(
              style: segmentedStyle,
              segments: const [
                ButtonSegment(
                  value: DeliveryType.pickup,
                  label: Text("Pickup"),
                  icon: Icon(Icons.store),
                ),
                ButtonSegment(
                  value: DeliveryType.delivery,
                  label: Text("Delivery"),
                  icon: Icon(Icons.delivery_dining),
                ),
                ButtonSegment(
                  value: DeliveryType.dineIn,
                  label: Text("Dine-In"),
                  icon: Icon(Icons.restaurant),
                ),
              ],
              selected: deliverySelection,
              onSelectionChanged: (value) {
                setState(() {
                  deliverySelection = value;
                });
              },
            ),
          ),
        ),

        const SizedBox(height: 30),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Multi Selection",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),

        const SizedBox(height: 10),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: SegmentedButton<FilterType>(
              multiSelectionEnabled: true,
              style: segmentedStyle,
              segments: const [
                ButtonSegment(
                  value: FilterType.veg,
                  label: Text("Veg"),
                  icon: Icon(Icons.eco),
                ),
                ButtonSegment(
                  value: FilterType.nonVeg,
                  label: Text("Non-Veg"),
                  icon: Icon(Icons.set_meal),
                ),
                ButtonSegment(
                  value: FilterType.drinks,
                  label: Text("Drinks"),
                  icon: Icon(Icons.local_bar),
                ),
              ],
              selected: filters,
              onSelectionChanged: (value) {
                setState(() {
                  filters = value;
                });
              },
            ),
          ),
        ),

        const SizedBox(height: 30),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Icon Only Segmented Button",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),

        const SizedBox(height: 10),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: SegmentedButton<int>(
              showSelectedIcon: false,
              style: segmentedStyle,
              segments: const [
                ButtonSegment(value: 0, icon: Icon(Icons.grid_view)),
                ButtonSegment(value: 1, icon: Icon(Icons.list)),
                ButtonSegment(value: 2, icon: Icon(Icons.map)),
              ],
              selected: iconSelection,
              onSelectionChanged: (value) {
                setState(() {
                  iconSelection = value;
                });
              },
            ),
          ),
        ),

        const SizedBox(height: 40),
      ],
    );
  }
}
