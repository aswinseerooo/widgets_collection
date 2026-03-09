import 'package:flutter/cupertino.dart';
import 'package:widgets_collection/presentation/features/widgets/cupertino_sheet_route/widgets/cupertino_sheet_content.dart';

class CupertinoSheetRouteBody extends StatelessWidget {
  const CupertinoSheetRouteBody({super.key});

  void _openRouteSheet(BuildContext context) {
    Navigator.of(context).push(
      CupertinoSheetRoute(
        builder: (context) =>
            const CupertinoSheetContent(title: "CupertinoSheetRoute"),
      ),
    );
  }

  void _openShowSheet(BuildContext context) {
    showCupertinoSheet(
      context: context,
      builder: (context) =>
          const CupertinoSheetContent(title: "showCupertinoSheet"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "CupertinoSheetRoute pushes a sheet as a route.\n\n"
            "showCupertinoSheet presents a modern iOS modal sheet.\n\n"
            "Both support drag-to-dismiss, but their navigation "
            "behavior differs when pushing new pages inside the sheet.",
            style: TextStyle(
              color: CupertinoColors.white,
              fontSize: 16,
              height: 1.6,
            ),
          ),

          const SizedBox(height: 40),

          CupertinoButton.filled(
            color: CupertinoColors.systemGreen,
            onPressed: () => _openRouteSheet(context),
            child: const Text("Open CupertinoSheetRoute"),
          ),

          const SizedBox(height: 20),

          CupertinoButton.filled(
            color: CupertinoColors.systemBlue,
            onPressed: () => _openShowSheet(context),
            child: const Text("Open showCupertinoSheet"),
          ),
        ],
      ),
    );
  }
}
