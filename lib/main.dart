import 'package:flutter/material.dart';
import 'package:recipes_mecy/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipes Mecy App',
      home: SplashScreen(),
    );
  }
}
