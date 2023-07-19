// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_typing_uninitialized_variables, unused_import, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:kaio/screens/Hc_papermachie.dart';
import 'package:kaio/screens/desc_Hc_pprmche.dart';
import 'package:kaio/screens/handicrafts.dart';

import 'package:kaio/widgets/Recipe.dart';

import 'screens/Cuisine.dart';
import 'screens/Destinationdesc.dart';
import 'screens/literature.dart';



void main() {
  runApp(MaterialApp(
    home: Description_Destination(),
  ));
}
var devH;
var devW;

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
           
          ],
        ),
      ),
    );
  }
}
