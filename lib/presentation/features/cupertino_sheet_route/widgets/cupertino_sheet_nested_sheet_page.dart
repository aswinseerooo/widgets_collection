import 'package:flutter/cupertino.dart';

class CupertinoSheetNestedSheetPage extends StatelessWidget {
  const CupertinoSheetNestedSheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("Nested Page"),
          leading: CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Icon(CupertinoIcons.back),
          ),
        ),
        child: const SafeArea(
          child: Center(
            child: Text(
              "This page is pushed inside the sheet.\n\n"
              "Notice how navigation behaves differently\n"
              "between CupertinoSheetRoute and showCupertinoSheet.",
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
