import 'dart:collection';
import 'package:flutter/material.dart';
import 'unmodifiable_list_view_explanation_section.dart';

class UnmodifiableListViewBody extends StatefulWidget {
  const UnmodifiableListViewBody({super.key});

  @override
  State<UnmodifiableListViewBody> createState() =>
      _UnmodifiableListViewBodyState();
}

class _UnmodifiableListViewBodyState extends State<UnmodifiableListViewBody> {
  final List<String> _internalList = ["Apple 🍎", "Banana 🍌", "Orange 🍊"];

  late UnmodifiableListView<String> safeList;

  @override
  void initState() {
    super.initState();
    safeList = UnmodifiableListView(_internalList);
  }

  void addItem() {
    setState(() {
      _internalList.add("New Item ${_internalList.length + 1}");
    });
  }

  void tryModifySafeList() {
    try {
      safeList.add("❌ Illegal Item");
    } catch (e) {
      ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(
        const SnackBar(
          content: Text("Error: Cannot modify UnmodifiableListView"),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const UnmodifiableListViewExplanationSection(),

        const SizedBox(height: 20),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const Text(
                "Internal List",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),

              const SizedBox(height: 10),

              ..._internalList.map(
                (item) => ListTile(
                  title: Text(
                    item,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: addItem,
                child: const Text("Add Item to Internal List"),
              ),

              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: tryModifySafeList,
                child: const Text("Try Modifying UnmodifiableListView"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
