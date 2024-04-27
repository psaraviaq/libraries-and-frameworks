import 'package:flutter/material.dart';

//^ Basic "Hello World" app
void main_00() {
  //* Call the "runApp" function to run the app, you can pass a widget like "MaterialApp"
  //! "const" is suggested to be used (or removed) to avoid the widget from being rebuilt
  runApp(const MaterialApp(
    //* The "home" property sets the widget that will be displayed first
    //! Every text displayed on screen must be wrapped in a "Text" widget
    home: Text("Hello World"),
  ));
}

//^ A better looking app
void main_01() {
  runApp(MaterialApp(
    //* To make the widgets better looking, wrap them in a "Scaffold" widget
    home: Scaffold(
      //* The "appBar" property sets the top bar of the app
      //* It could simply take an "AppBar" widget
      //! You should add a comma (,) after the last property for better-looking formatting
      appBar: AppBar(
        title: const Text("First Flutter App"),
        backgroundColor: Colors.brown[700],
        centerTitle: true,
      ),
      //* The "body" property sets the main content of the app
      body: const Text("Hello World"),
    ),
  ));
}

//^ An app with a stateless widget
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        //! This widget doesn't rebuild when the app is hot reloaded
        title: const Text("Stateless Widget"),
        backgroundColor: Colors.purple[300],
      ),
      //* Just pass an instance of the widget class
      body: const Home(),
    ),
  ));
}

//* Type "stl" to create a template for a stateless widget
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  //* The "build" method enables "Hot Reload", which rebuilds the widget when it changes
  Widget build(BuildContext context) {
    //* Just replace the return value with the widget you want to display
    return const Text("This widget supports \"Hot Reload\"");
  }
}
