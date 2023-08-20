// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_typing_uninitialized_variables, unused_import, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:kaio/Destination/desttemplate.dart';
import 'package:kaio/Literature/Book.dart';
import 'package:kaio/Literature/BookTemplate.dart';
import 'package:kaio/Cuisine/FlipCarousel.dart';
import 'package:kaio/mainScreen.dart';
import 'package:kaio/widgets/Recipe.dart';
import 'Destination/carouselPage.dart';
import 'MainScreens/Cuisine.dart';
import 'MainScreens/Culture.dart';
import 'MainScreens/destinations.dart';
import 'MainScreens/handicrafts.dart';
import 'MainScreens/literature.dart';



void main() {
  runApp(
    MaterialApp(
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Color(0xff156F5B),
              )),
        home: HomeScreen()),
  );
}

var devH, devW;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;
    return MainScreen();
  }
}