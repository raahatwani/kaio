// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors_in_immutables, non_constant_identifier_names, unused_import, unused_element, avoid_unnecessary_containers, must_be_immutable, use_key_in_widget_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/data/destination.dart';
import 'package:kaio/main.dart';
import 'package:kaio/Handicraft/craft.dart';
import '../Destination/Container.dart';
import '../Destination/Features.dart';
import '../Destination/desttemplate.dart';

// PageController controller = PageController();

class Destination extends StatelessWidget {
  // final controller = PageController();
  // int selectedPage = 0;

  Destination({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         appBar: AppBar(
            title: Text(
              'Kaio',
              style: kSubHeading,
            ),
            backgroundColor: Theme.of(context).primaryColor,
          ),
        body: Stack(
          children: [_DestinationPage(), _GradientWidget(), _topLayerWidget()],
        ),
      ),
    );
  }

  Widget _DestinationPage() {
    return SizedBox(
      height: devH * 0.5,
      width: devW,
      child:
          Image.asset(fit: BoxFit.cover, 'assets/images/Destination/Main/kashmir.png'),
    );
  }

  Widget _GradientWidget() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: devH * 0.6,
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
                    children: north,
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
                    children: south,
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
                    children: central,
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
Widget Baramulla() {
  return DestTemplate(
      placeName: 'Baramulla',
      cimages: BaramullaCImages,
      DescriptionPlace:
          '\n-Baramulla is also known as Varmul \n \n \n-The town was earlier known as "Vārāhamūla". \n \n \n-The name is derived from two Sanskrit words, Vārāha (meaning wild boar) and Mūla (meaning root/origin). ',
      places: BaramullaPlaceImages,
      things: BaramullaThingImages);
}
Widget Ganderbal() {
  return DestTemplate(
      placeName: 'Ganderbal',
      cimages: GanderbalCImages,
      DescriptionPlace:
          '\n-The Ganderbal district is located in valley of the Sindh River, also known as Nallah Sindh.\n-It is rich in landscape and is often called the District of Lakes, as it possesses the highest number of lakes in the state of Jammu and Kashmir.',
      places: GanderbalPlaceImages,
      things: GanderbalThingImages);
}
Widget Bandipora() {
  return DestTemplate(
      placeName: 'Bandipora',
      cimages: BandiporaCImages,
      DescriptionPlace:
          '\n-It is located in the vast Shams Bri mountainous range.\n-It is about 3000 m above sea level. \n-The pass is best known for its generation old mythological legend of Blind and Deaf Fairies.',
      places: BandiporaPlaceImages,
      things: BandiporaThingImages);
}
Widget Kupwara() {
  return DestTemplate(
      placeName: 'Kupwara',
      cimages: KupwaraCImages,
      DescriptionPlace:
          '\n-It is located in the vast Shams Bri mountainous range.\n \n-It is about 3000 m above sea level. \n \n-The pass is best known for its generation old mythological legend of Blind and Deaf Fairies.',
      places: KupwaraPlaceImages,
      things: KupwaraThingImages);
}
Widget Kulgam() {
  return DestTemplate(
      placeName: 'Kulgam',
      cimages: KulgamCImages,
      DescriptionPlace:
          '\n-Kulgam is known as the rice bowl of the valley and is known for its variety of fruit, especially apples.\n\n-This town is on the bank of river Veshaw across the spread of which are the foothills of the Pir Panchal mountains.',
      places: KulgamPlaceImages,
      things: KulgamThingImages);
}
Widget Pulwama() {
  return DestTemplate(
      placeName: 'Pulwama',
      cimages: PulwamaCImages,
      DescriptionPlace:
          '\n-Pulwama is known for its numerous spring streams, waterfalls, green meadows, and rich biodiversity.\n\n-Pulwama is also home to various historical monuments like Payer temple, Avantishwar temple, and Khankha Tral.',
      places: PulwamaPlaceImages,
      things: PulwamaThingImages);
}
Widget Shopian() {
  return DestTemplate(
      placeName: 'Shopain',
      cimages: ShopianCImages,
      DescriptionPlace:
          '\n-Historical town situated in the South of Kashmir at the foot hills of \'Peer-Panchal\' mountain range.\n\n-Famously known as Apple Town in the sub-continent',
      places: ShopianPlaceImages,
      things: ShopianThingImages);
}
Widget Anantnag() {
  return DestTemplate(
      placeName: 'Anantnag',
      cimages: AnantnagCImages,
      DescriptionPlace:
          '\n-Located towards South of Jehlum Valley,beautified by the splendors of nature.\n\n-The majestic mountains, gushing streams, numerous springs,and aromatic flowers welcomes you to this land of amazing wonders in Kashmir.',
      places: AnantnagPlaceImages,
      things: AnantnagThingImages);
}
Widget Budgam() {
  return DestTemplate(
      placeName: 'Budgam',
      cimages: BudgamCImages,
      DescriptionPlace:
          '\n-Came into existence in 1979, prior to which it was part of Srinagar district.\n\n-Tourist attractions are Doodhpathri,Yusmarg,Tosamaidan,Nilnag\n\n-Shrine of Sheikh Noor-ud-din Wali can also be found in Charari Sharief.',
      places: BudgamPlaceImages,
      things: BudgamThingImages);
}
Widget Srinagar() {
  return DestTemplate(
      placeName: 'Srinagar',
      cimages: SrinagarCImages,
      DescriptionPlace:
          '\n-Summer capital of Jammu and Kashmir (UT).\n\n-Situated in the centre of the Kashmir Valley on the banks of the Jhelum River.\n\n-Famous for its gardens, lakes and houseboats.',
      places: SrinagarPlaceImages,
      things: SrinagarThingImages);
}
