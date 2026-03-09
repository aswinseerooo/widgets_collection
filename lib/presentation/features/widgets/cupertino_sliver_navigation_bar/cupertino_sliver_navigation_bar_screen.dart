import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'widgets/cupertino_sliver_navigation_bar_body.dart';

@RoutePage()
class CupertinoSliverNavigationBarScreen extends StatelessWidget {
  const CupertinoSliverNavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Since CupertinoSliverNavigationBar is a Cupertino widget, we need to use CupertinoApp instead of MaterialApp.
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoSliverNavigationBarBody(),
    );
  }
}
