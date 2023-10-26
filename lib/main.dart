import 'package:flutter/material.dart';
import 'package:halloween/presentation/screen/home/home_screen.dart';
import 'package:halloween/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 4).getTheme(),
      home: const HomeScreen()
    );
  }
}
