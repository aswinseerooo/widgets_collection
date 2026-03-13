import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:widgets_collection/firebase_options.dart';
import 'package:widgets_collection/presentation/core/router/app_router.dart';

final AppRouter appRouter = AppRouter();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Widgets Collection',
      routerConfig: appRouter.config(),
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
    );
  }
}
