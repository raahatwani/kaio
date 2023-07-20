// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kaio/widgets/travel_new.dart';


import '../Destination/Destinationdescription.dart';
import '../constants.dart';





bool showDefault = true,
    showPaperMac = false,
    showCRM = false,
    showEmb = false,
    showStoneCraft = false,
    showOther = false;

// ignore: must_be_immutable
class Destination extends StatefulWidget {
  Destination({super.key});

  @override
  State<Destination> createState() => _DestinationState();
}

class _DestinationState extends State<Destination> {
  @override
  Widget build(BuildContext context) {
   var devH = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search',
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Color(0xff85586F), width: 2)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Color(0xff85586F), width: 2)),
              ),
            ),
          ),
          CarouselSlider(
            items: [
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.pink,
              ),
              Container(
                color: Colors.yellow,
              ),
            ],
            options: CarouselOptions(
              height: 160.0,
              enlargeCenterPage: true,
              enlargeFactor: 0.5,
              aspectRatio: 16 / 9,
              enableInfiniteScroll: true,
              viewportFraction: 0.5,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Recommendations for you',
            style: kHeading,
          ),
          Container(
            height: devH * 0.5,
            child: SingleChildScrollView(
              child: Column(
                children: [Travel_new(name: Description_Destination(),), Travel_new(name:Description_Destination() ,), Travel_new(name:Description_Destination ,)],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
