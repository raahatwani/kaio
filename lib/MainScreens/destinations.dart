// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors_in_immutables, non_constant_identifier_names, unused_import, unused_element, avoid_unnecessary_containers, must_be_immutable, use_key_in_widget_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import 'package:kaio/MainScreens/literature.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/main.dart';
import 'package:kaio/widgets/craft.dart';

import '../Destination/Container.dart';
import '../Destination/Features.dart';
import '../Destination/desttemplate.dart';

PageController controller = PageController();

class Destination extends StatelessWidget {
  final controller = PageController();
  int selectedPage = 0;

  Destination({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [_DestinationPage(), _GradientWidget(), _topLayerWidget()],
      ),
    );
  }

  Widget _DestinationPage() {
    return SizedBox(
      height: devH * 0.5,
      width: devW,
      child: Image.asset(fit: BoxFit.cover, 'assets/images/destinationimgs/kashmir.png'),
    );
  }

  Widget _GradientWidget() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: devH * 0.7,
          width: devW,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffd1d1cd), Colors.transparent],
                  stops: [0.65, 1.0],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)),
        ));
  }

  Widget _topLayerWidget() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(
              height: devH * 0.40,
            ),
            DestinationFeatures(),
            SizedBox(
              height: devH * 0.01,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'North',
                  style: kHeading,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      DestinationContainer(
                        imagePath: 'assets/images/destinationimgs/baramulla.png',
                        nextPage: LiteraturePage(),
                      ),
                      DestinationContainer(
                        imagePath: 'assets/images/destinationimgs/ganderbal.png',
                        nextPage: LiteraturePage(),
                      ),
                      DestinationContainer(
                        imagePath: 'assets/images/destinationimgs/bandipora.png',
                        nextPage: LiteraturePage(),
                      ),
                      DestinationContainer(
                        imagePath: 'assets/images/destinationimgs/kupwara.png',
                        nextPage: LiteraturePage(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'South',
                  style: kHeading,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      DestinationContainer(
                        imagePath: 'assets/images/destinationimgs/kulgam.png',
                        nextPage: LiteraturePage(),
                      ),
                      DestinationContainer(
                        imagePath: 'assets/images/destinationimgs/pulwama.png',
                        nextPage: LiteraturePage(),
                      ),
                      DestinationContainer(
                        imagePath: 'assets/images/destinationimgs/shopian.png',
                        nextPage: LiteraturePage(),
                      ),
                      DestinationContainer(
                        imagePath: 'assets/images/destinationimgs/anantnag.png',
                        nextPage: LiteraturePage(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Central',
                  style: kHeading,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      DestinationContainer(
                        imagePath: 'assets/images/destinationimgs/srinagar.png',
                        nextPage: DestTemplate(
                          placeName: 'Srinagar',
                          cimage1: 'assets/images/destinationimgs/srinagar1.jpg',
                          cimage2: 'assets/images/destinationimgs/srinagar2.avif',
                          cimage3: 'assets/images/destinationimgs/srinagar3.jpg',
                          cimage4: 'assets/images/destinationimgs/srinagar4.png',
                          cimage5: 'assets/images/destinationimgs/srinagar5.jpg',
                          DescriptionPlace: '-Summer capital of Jammu and Kashmir (UT).\n\n-Situated in the centre of the Kashmir Valley on the banks of the Jhelum River.\n\n-Famous for its gardens, lakes and houseboats.',
                          place1: 'assets/images/destinationimgs/Shalimar.png',
                          place2: 'assets/images/destinationimgs/Tulipgarden.png',
                          place3: 'assets/images/destinationimgs/Parimahal.png',
                          place4: 'assets/images/destinationimgs/Chashmashahi.png',
                          place5: 'assets/images/destinationimgs/Badamwari.png',
                          thing1: 'assets/images/destinationimgs/Shikara.png',
                          thing2: 'assets/images/destinationimgs/paragliding.png',
                          thing3: 'assets/images/destinationimgs/heritage.png',
                          thing4: 'assets/images/destinationimgs/houseboat.png',
                          thing5: 'assets/images/destinationimgs/birds.png',
                          BestTime: 'April to October is the best time to visit Srinagar when the weather is perfect for sightseeing. The minimum temperature during this time ranges between 10 to 20 degrees Celcius while the maximum temperature is around 20 to 30 degrees Celcius.\nSrinagar has two main seasons - summer and winter with 1-2 months of autumn. There is no proper monsoon season as Srinagar has very little rainfall. Overall, Srinagar has pleasant weather with a soothing temperature making it a go-to destination throughout the year. ',
                        ),
                      ),
                      DestinationContainer(
                        imagePath: 'assets/images/destinationimgs/budgam.png',
                        nextPage: LiteraturePage(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
