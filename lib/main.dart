import 'package:flutter/material.dart';
import 'package:halloween/config/router/app_router.dart';
import 'package:halloween/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 1).getTheme(),
      // home: const HomeScreen(),
      routerConfig: appRouter,
    );
  }
}
