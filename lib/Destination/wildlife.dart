// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';
import '../main.dart';

class Wildlife extends StatelessWidget {
  Wildlife({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          ForegroundImage()
        ],
      ),
    );
  }

  Widget BackgroundImage() {
    return SizedBox(
        height: devH * 0.5,
        width: devW,
        child: Image(
          fit: BoxFit.cover,
          image: AssetImage('assets/Destination/Ganderbal/thing/gangbalTrek.png')),
    );
  }

  Widget ForegroundImage() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: devH * 0.4,
          ),
          WildlifeCard('Dachigam',
          'Splendid forests, magnificent scenery and unique topographical variety are the factors that make Dachigam National Park the favourite of tourists. Situated 22 km from Srinagar, Dachigam national park is simply a dreamland for jungle enthusiasts. The park covers an area of 141 square kilometres with some of the most exotic flora and fauna species. The appearence of the park changes every season. In winters, the park is covered with white snow, while the spring brings bountiful greenery. Waterfalls and streams are unveiled in summers and vast grassy meadows and scented flowers can be observed in higher regions. Autumn is characterised with pastel shades of red, gold, yellow and orange on the trees and leaves.',
          'assets/Destination/Ganderbal/thing/gangbalTrek.png',
          ),
           WildlifeCard(
              'Dachigam',
              'Splendid forests, magnificent scenery and unique topographical variety are the factors that make Dachigam National Park the favourite of tourists. Situated 22 km from Srinagar, Dachigam national park is simply a dreamland for jungle enthusiasts. The park covers an area of 141 square kilometres with some of the most exotic flora and fauna species. The appearence of the park changes every season. In winters, the park is covered with white snow, while the spring brings bountiful greenery. Waterfalls and streams are unveiled in summers and vast grassy meadows and scented flowers can be observed in higher regions. Autumn is characterised with pastel shades of red, gold, yellow and orange on the trees and leaves.',
              'assets/Destination/Ganderbal/thing/gangbalTrek.png',
          ),
        ],
      ),
    );
  }

  Widget WildlifeCard(heading,description,imagePath) {
    return Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(heading,style: kHeading,),
              SizedBox(height: devH*0.02,),
              Image(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    imagePath,
                  )),
              SizedBox(
                height: devH * 0.02,
              ),
              Text(
                description,
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ));
  }
}