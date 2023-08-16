// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';
import '../main.dart';

class Shrine extends StatelessWidget {
  Shrine({super.key});

  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            BackgroundImage(),
            ForegroundImage()
          ],
        ),
      ),
    );
  }

  Widget BackgroundImage() {
    return SizedBox(
        height: devH * 0.5,
        width: devW,
        child: Image(
          fit: BoxFit.fill,
          image: AssetImage('assets/Destination/Main/kashShrines.png')),
    );
  }

  Widget ForegroundImage() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: devH * 0.4,
          ),
          
        ],
      ),
    );
  }

  Widget ShrineCard(heading,description,imagePath) {
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
              Container(height: devH*0.3,
              width: devW*0.9,
                child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      imagePath,
                    )),
              ),
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