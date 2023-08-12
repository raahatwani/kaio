// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names, sized_box_for_whitespace

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class DestinationFeatures extends StatelessWidget {
  const DestinationFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CarouselSlider(
          items: [
            Container(
                width: devW,
                child: Image.asset('assets/images/destinationimgs/kashWidlife.png')),
              Container(
                width: devW,
                child: Image.asset('assets/images/destinationimgs/kashShrines.png')),
              Container(
                width: devW,
                child: Image.asset('assets/images/destinationimgs/kashTreks.png')),
              Container(
                width: devW, 
                child: Image.asset('assets/images/destinationimgs/kashPilgrims.png')),
              Container(
                width: devW, 
                child: Image.asset('assets/images/destinationimgs/kashHeriatge.png')),
          ], 
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 2),
            scrollDirection: Axis.horizontal
          ),

        ),
      ],
    );
  }
}
