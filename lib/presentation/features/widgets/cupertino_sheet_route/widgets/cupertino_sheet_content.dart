import 'package:flutter/cupertino.dart';
import 'package:widgets_collection/presentation/features/widgets/cupertino_sheet_route/widgets/cupertino_sheet_nested_sheet_page.dart';

class CupertinoSheetContent extends StatelessWidget {
  final String title;

  const CupertinoSheetContent({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(middle: Text(title)),
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              const SizedBox(height: 20),
      
              const Text(
                "This sheet supports nested navigation.\n\n"
                "Tap below to push another page inside the sheet.",
                style: TextStyle(fontSize: 16),
              ),
      
              const SizedBox(height: 30),
      
              CupertinoButton.filled(
                onPressed: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(builder: (_) => const CupertinoSheetNestedSheetPage()),
                  );
                },
                child: const Text("Push Nested Page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
