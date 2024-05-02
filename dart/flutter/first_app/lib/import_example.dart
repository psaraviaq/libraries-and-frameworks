//! You still need to import this to use Material Design widgets
import 'package:flutter/material.dart';

class ImportExample extends StatelessWidget {
  const ImportExample({super.key});

  @override
  Widget build(BuildContext context) {
    //* Wrap each page with a "Scaffold" so each one has its own AppBar and body
    return Scaffold(
      appBar: AppBar(
        title: const Text("Import Example"),
        backgroundColor: Colors.amber,
      ),
      body: const Text("Home"),
    );
  }
}