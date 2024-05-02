import 'package:flutter/material.dart';

class Columns extends StatelessWidget {
  const Columns({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Columns"),
        backgroundColor: Colors.cyan,
      ),
      //* The "Column" widget arranges its children in a vertical array
      body: Column(
        //* The "crossAxisAlignment" property aligns them in the cross axis (horizontal for Column)
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        //* The "mainAxisAlignment" property aligns them in the main axis (vertical for Column)
        // mainAxisAlignment: MainAxisAlignment.center,
        //! The "children" property must take a list of widgets
        children: [
          Container(
            color: Colors.green,
            padding: const EdgeInsets.all(10),
            child: const Text("green"),
          ),
          Container(
            color: Colors.orange,
            padding: const EdgeInsets.all(10),
            child: const Text("orange"),
          ),
          Container(
            color: Colors.pink,
            padding: const EdgeInsets.all(10),
            child: const Text("pink"),
          ),
        ],
      ),
    );
  }
}