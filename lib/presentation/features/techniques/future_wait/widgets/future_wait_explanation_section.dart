import 'package:flutter/material.dart';

class FutureWaitExplanationSection extends StatelessWidget {
  const FutureWaitExplanationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        "Future.wait allows multiple asynchronous operations "
        "to run in parallel and waits until all of them complete.\n\n"
        "Instead of awaiting each Future one by one, Future.wait "
        "executes them simultaneously which improves performance "
        "when tasks are independent.\n\n"
        "Example use cases:\n\n"
        "• Fetch multiple API endpoints at the same time\n"
        "• Load user profile, posts, and notifications together\n"
        "• Perform multiple database queries concurrently\n\n"
        "Future.wait returns a List containing the results of all "
        "Futures in the same order they were provided.\n\n"
        "Important notes:\n\n"
        "• All Futures start executing immediately.\n"
        "• The returned Future completes when the slowest task finishes.\n"
        "• If any Future throws an error, the entire Future.wait fails.\n\n"
        "Using Future.wait helps reduce total waiting time and "
        "makes asynchronous code more efficient.",
        style: TextStyle(fontSize: 16, height: 1.6, color: Colors.white),
      ),
    );
  }
}
