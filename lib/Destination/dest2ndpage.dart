// ignore_for_file: must_be_immutable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kaio/MainScreens/Cuisine.dart';
import 'package:kaio/constants.dart';

import '../MainScreens/handicrafts.dart';
import '../main.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    
    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Center(
            child: Text(
              'Srinagar',
              style: kHeading,
            ),
          ),

          Stack(
            children: [
              CarouselSlider(
                items: [
                  PlaceCard(
                      imagePath: 'assets/srinagar1.jpg',
                      widgetName: Handicraft()),
                      PlaceCard(
                      imagePath: 'assets/srinagar2.avif',
                      widgetName: Handicraft()),
                      PlaceCard(
                      imagePath: 'assets/srinagar3.jpg',
                      widgetName: Handicraft()),
                      PlaceCard(
                      imagePath: 'assets/srinagar4.png',
                      widgetName: Handicraft()),
                      PlaceCard(
                      imagePath: 'assets/srinagar5.jpg',
                      widgetName: Handicraft()),
                ],
                options: CarouselOptions(
                  height: 300.0,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 5),
                  autoPlayCurve: Curves.easeIn,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  enableInfiniteScroll: true,
                  viewportFraction: 1,
                  
                ),
              ),
              Positioned(
                bottom: -5,
                top: -5,
      left: 230,
      right: 10,
                child: Opacity(opacity: 0.5,
                  child: Container(color: Colors.black,
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '-Summer capital of Jammu and Kashmir (UT).\n\n-Situated in the centre of the Kashmir Valley on the banks of the Jhelum River.\n\n-Famous for its gardens, lakes and houseboats.',
                            textAlign: TextAlign.justify,style: TextStyle(color: Colors.white),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),


          DefaultTabController(
            length: 3,
            child: Expanded(
              child: Column(
                children: [
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(25.0)),
                    child: TabBar(
                      isScrollable: true,
                      indicator: BoxDecoration(
                          color: Color(0xff85586F),
                          borderRadius: BorderRadius.circular(25.0)),
                      tabs: [
                       
                        Tab(text: 'Places to visit'),
                        Tab(text: 'Things to do'),
                        Tab(text: 'Best time to visit'),

                        
                      ],
                      labelColor: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                       
                        SingleChildScrollView(
                          child: Container(
                            child: Column(
                              children: [
                                PlaceCard(
                                    imagePath: 'assets/Shalimar.png',
                                    widgetName: Handicraft()),
                                PlaceCard(
                                    imagePath: 'assets/Tulipgarden.png',
                                    widgetName: Handicraft()),
                                PlaceCard(
                                    imagePath: 'assets/Parimahal.png',
                                    widgetName: Handicraft()),
                                     PlaceCard(
                                    imagePath: 'assets/Chashmashahi.png',
                                    widgetName: Handicraft()),
                                     PlaceCard(
                                    imagePath: 'assets/Badamwari.png',
                                    widgetName: Handicraft())
                              ],
                            ),
                          ),
                        ),

                       SingleChildScrollView(
                          child: Container(
                            child: Column(
                              children: [
                                PlaceCard(
                                    imagePath: 'assets/Shikara.png',
                                    widgetName: Cuisine()),
                                PlaceCard(
                                    imagePath: 'assets/paragliding.png',
                                    widgetName: Cuisine()),
                                PlaceCard(
                                    imagePath: 'assets/heritage.png',
                                    widgetName: Cuisine()),
                                    PlaceCard(
                                    imagePath: 'assets/houseboat.png',
                                    widgetName: Cuisine()),
                                    PlaceCard(
                                    imagePath: 'assets/birds.png',
                                    widgetName: Cuisine())
                              ],
                            ),
                          ),
                        ),

                        SingleChildScrollView(
                          child: Container(
                            margin: EdgeInsets.all(10),
                            child:
                                Column(children: [Text('YET TO BE DISCUSSED')]),
                          ),
                        ),
                       
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class PlaceCard extends StatelessWidget {
  String imagePath = '';
  var widgetName;
  PlaceCard({required this.imagePath, required this.widgetName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => widgetName));
      },
      child: Card(
        child: Container(
            height: devH * 0.3,
            width: devW * 0.9,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Image(fit: BoxFit.fill, image: AssetImage(imagePath))),
      ),
    );
  }
}
