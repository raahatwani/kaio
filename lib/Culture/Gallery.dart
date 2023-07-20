// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/main.dart';

class Gallery extends StatelessWidget {
  List imagePath = [
    'assets/argami.jpg',
    'assets/gulmarg.jpg',
    'assets/kehwa.jpg',
    'assets/kral.jpg',
    'assets/mehjoor.jpg',
    'assets/museeki.jpg',
    'assets/rasol.jpg',
    'assets/shamas.jpg',
    'assets/rahman.jpg',
    'assets/paper_machie.jpg',
  ];

  @override
  Widget build(BuildContext context) {
devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back_sharp),color: Color(0xff85586F),
            
          ),
        title: Text(
          'GALLERY',
          style: kHeading,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding:  EdgeInsets.all(devW*0.02),
        child: GridView.builder(
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: devW*0.03,
              childAspectRatio: 0.7,
              mainAxisSpacing: devH*0.03,
            ),
            itemBuilder: (context, index) {
              String images = imagePath[index];

              return Padding(
                padding:  EdgeInsets.all(devW*0.01),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(devH*0.05),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(devH*0.05),
                    child: Image.asset(
                      images,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
