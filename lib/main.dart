// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_typing_uninitialized_variables, unused_import, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:kaio/Destination/desttemplate.dart';
import 'package:kaio/Destination/heritage.dart';
import 'package:kaio/Destination/pilgrim.dart';
import 'package:kaio/Destination/shrines.dart';
import 'package:kaio/Literature/Book.dart';
import 'package:kaio/Literature/BookTemplate.dart';
import 'package:kaio/Cuisine/FlipCarousel.dart';
import 'package:kaio/widgets/Recipe.dart';
import 'package:kaio/widgets/travel_new.dart';
import 'Culture/Gallery.dart';
import 'Destination/wildlife.dart';
import 'MainScreens/Cuisine.dart';
import 'MainScreens/Culture.dart';
import 'MainScreens/destinations.dart';
import 'MainScreens/handicrafts.dart';
import 'MainScreens/literature.dart';




void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}



var devH;
var devW;

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Kashmir App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LiteraturePage(),
                  ),
                );
              },
              child: Text('Kashmiri Literature'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cuisine(),
                  ),
                );
              },
              child: Text('Kashmiri Cuisine'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Handicraft(),
                  ),
                );
              },
              child: Text('Kashmir Handicrafts'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Destination(),
                  ),
                );
              },
              child: Text('Kashmir Destinations'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Culture(),
                  ),
                );
              },
              child: Text('Kashmir Culture'),
            ),
           
          ],
        ),
      ),
    );
  }
}
