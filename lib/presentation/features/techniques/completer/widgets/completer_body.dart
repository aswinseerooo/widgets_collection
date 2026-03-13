import 'dart:async';
import 'package:flutter/material.dart';
import 'package:widgets_collection/presentation/components/common_button/common_button.dart';

class CompleterBody extends StatefulWidget {
  const CompleterBody({super.key});

  @override
  State<CompleterBody> createState() => _CompleterBodyState();
}

class _CompleterBodyState extends State<CompleterBody> {
  String _result = "No result yet";

  Future<String> _simulateAsyncTask() {
    final completer = Completer<String>();

    Future.delayed(const Duration(seconds: 2), () {
      completer.complete("Async task completed using Completer");
    });

    return completer.future;
  }

  Future<void> _runTask() async {
    setState(() {
      _result = "Running async task...";
    });

    final result = await _simulateAsyncTask();

    setState(() {
      _result = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Completer Technique",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 12),

          const Text(
            "Completer is used to manually control the completion of a Future. "
            "It is helpful when you need to complete a Future based on events "
            "such as user actions, callbacks, or external triggers.",
            style: TextStyle(color: Colors.white),
          ),

          const SizedBox(height: 24),

          const Text(
            "Demo",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),

          const SizedBox(height: 16),

          Center(
            child: CommonButton(label: "Start Async Task", onTap: _runTask),
          ),

          const SizedBox(height: 24),

          Text(
            _result,
            style: const TextStyle(fontSize: 16, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
