import 'package:flutter/material.dart';

/// Home page of the app
/// Displays hello message and color background
class HomePage extends StatefulWidget {
  /// Constructs home page
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _color = Colors.white;

  void _changeColor() {
    setState(() {
      _color = Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: _changeColor,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          color: _color,
          child: const Center(
            // TODO: Add translation table
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
