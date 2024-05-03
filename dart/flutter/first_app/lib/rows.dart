import 'package:flutter/material.dart';

class Rows extends StatelessWidget {
  const Rows({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rows"),
        backgroundColor: Colors.pink,
      ),
      //* Use the "Row" widget to display widgets in a row
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.amber,
            padding: const EdgeInsets.all(10),
            child: const Text ("one"),
          ),
          Container(
            color: Colors.blueAccent,
            padding: const EdgeInsets.all(10),
            child: const Text ("two"),
          ),
          Container(
            color: Colors.red,
            padding: const EdgeInsets.all(10),
            child: const Text ("three"),
          ),
        ]
      ),
    );
  }
}