import 'package:color_test_task/color_generator.dart';
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
  final _colorGenerator = ColorGenerator();
  Color _color = Colors.white;

  void _changeColor() {
    setState(() {
      _color = _colorGenerator.next();
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
          child: const SafeArea(
            child: Center(
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  // TODO: Add translation table
                  child: Text('Hello World'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
