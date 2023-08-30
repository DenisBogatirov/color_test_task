import 'package:color_test_task/home_page.dart';
import 'package:flutter/material.dart';

/// Entry point of the color app
class ColorTestApp extends StatelessWidget {
  /// Public constructor for the app
  const ColorTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
