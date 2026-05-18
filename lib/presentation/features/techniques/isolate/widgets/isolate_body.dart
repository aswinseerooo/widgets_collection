import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:widgets_collection/presentation/components/common_button/common_button.dart';
import 'package:widgets_collection/presentation/features/techniques/isolate/widgets/isolate_spinning_indicator.dart';

import 'isolate_explanation_section.dart';

class IsolateBody extends StatefulWidget {
  const IsolateBody({super.key});

  @override
  State<IsolateBody> createState() => _IsolateBodyState();
}

class _IsolateBodyState extends State<IsolateBody> {
  bool isLoading = false;
  int? result;

  Future<void> runOnMainThread() async {
    setState(() {
      isLoading = true;
      result = null;
    });

    final value = heavyComputation(10);

    setState(() {
      result = value;
      isLoading = false;
    });
  }

  Future<void> runOnIsolate() async {
    setState(() {
      isLoading = true;
      result = null;
    });

    final value = await compute(heavyComputation, 10);

    setState(() {
      result = value;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const IsolateExplanationSection(),

        const SizedBox(height: 20),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CommonButton(
            label: "Run Heavy Task (Main Thread)",
            onTap: runOnMainThread,
          ),
        ),

        const SizedBox(height: 10),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CommonButton(
            label: "Run Heavy Task (Isolate)",
            onTap: runOnIsolate,
          ),
        ),

        const SizedBox(height: 30),

        const Center(child: SpinningIndicator()),

        const SizedBox(height: 20),

        if (isLoading)
          const Center(child: CircularProgressIndicator(color: Colors.white)),

        if (result != null)
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Result: $result",
              style: const TextStyle(color: Colors.white, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),

        const SizedBox(height: 40),
      ],
    );
  }
}

int heavyComputation(int value) {
  int sum = 0;

  for (int i = 0; i < 100000000; i++) {
    sum += i;
  }

  return sum + value;
}
