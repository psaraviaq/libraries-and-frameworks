// import 'package:first_app/columns.dart';
import 'package:first_app/rows.dart';
import 'package:flutter/material.dart';

//* To use a widget from another file, import it at the top of the file
import 'package:first_app/import_example.dart';

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
void main_02() {
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
    // return const Text("This widget supports \"Hot Reload\"");
    //* You could also wrap your widget with a "Container"
    //* This allows you to add padding, margin, color, etc.
    //! The widget takes all the available space when no child is provided
    //* But when a child is provided, it takes the size of the child, it's still modifiable though
    return Container(
      color: Colors.orange,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.fromLTRB(100, 30, 0, 0),
      // height: 150,
      // width: 150,
      //* The "child" property sets the widget that will be displayed inside the container
      //* The "Text" widget can take a "style" property to give to its content
      child: const Text("Container interior", style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontStyle: FontStyle.italic,
        letterSpacing: 3,
        decoration: TextDecoration.underline,
        decorationColor: Colors.white,
      )),
    );
    //* The widgets can take different properties to modify their appearance
    //! Some require a special class with specific fields or methods
    //* You can always hover over a property to see its type and required fields
  }
}

//^ Imported widget as the main widget
void main_03() {
  runApp(const MaterialApp(
    home: ImportExample(),
  ));
}

//^ "Column" and "Row" widgets
void main() {
  runApp(const MaterialApp(
    // home: Columns(),
    home: Rows(),
  ));
}
