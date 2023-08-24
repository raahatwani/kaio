// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/gulmarg.jpg',
    'assets/gulmarg.jpg',
    'assets/gulmarg.jpg',
    'assets/gulmarg.jpg',
    'assets/gulmarg.jpg',
    'assets/gulmarg.jpg',
    'assets/gulmarg.jpg',
    'assets/gulmarg.jpg',
    'assets/gulmarg.jpg',
    'assets/gulmarg.jpg',
    'assets/gulmarg.jpg',
    'assets/gulmarg.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: imagePaths.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(imagePaths[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
