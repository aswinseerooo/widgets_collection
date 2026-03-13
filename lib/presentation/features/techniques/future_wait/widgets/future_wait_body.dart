import 'package:flutter/material.dart';
import 'package:widgets_collection/presentation/components/common_button/common_button.dart';
import 'future_wait_explanation_section.dart';

class FutureWaitBody extends StatefulWidget {
  const FutureWaitBody({super.key});

  @override
  State<FutureWaitBody> createState() => _FutureWaitBodyState();
}

class _FutureWaitBodyState extends State<FutureWaitBody> {
  List<String>? results;
  bool isLoading = false;

  Future<String> fetchUser() async {
    await Future.delayed(const Duration(seconds: 2));
    return "User Data Loaded";
  }

  Future<String> fetchPosts() async {
    await Future.delayed(const Duration(seconds: 3));
    return "Posts Loaded";
  }

  Future<String> fetchComments() async {
    await Future.delayed(const Duration(seconds: 1));
    return "Comments Loaded";
  }

  Future<void> loadAllData() async {
    setState(() {
      isLoading = true;
      results = null;
    });

    final response = await Future.wait([
      fetchUser(),
      fetchPosts(),
      fetchComments(),
    ]);

    setState(() {
      results = response.cast<String>();
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const FutureWaitExplanationSection(),

        const SizedBox(height: 10),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CommonButton(label: "Load All Data", onTap: loadAllData),
        ),

        const SizedBox(height: 20),

        if (isLoading)
          const Center(child: CircularProgressIndicator(color: Colors.white)),

        if (results != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: results!
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Text(
                        "• $e",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),

        const SizedBox(height: 40),
      ],
    );
  }
}
