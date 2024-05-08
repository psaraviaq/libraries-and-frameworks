import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({super.key});

  //! In order to use local images, you need to add them to the "pubspec.yaml" file

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Images"),
        backgroundColor: Colors.lime,
      ),
      body: Column(
        children: [
          //* The "Image" widget is used to display images
          //* The "asset" constructor is used to load local images
          Image.asset("assets/img/night.jpg"),
          //* The "network" constructor is used to load images from the internet
          Image.network("https://sugarspunrun.com/wp-content/uploads/2023/03/Easy-mac-and-cheese-recipe-1-of-1-300x300.jpg"),
          //* You can even set the width and height of the image as named parameters
          Image.asset("assets/img/tea.jpg",
            width: 100,
          ),
        ],
      ),
    );
  }
}