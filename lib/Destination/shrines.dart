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
          image: AssetImage('assets/images/shrinesofkashmir.jpg')),
    );
  }

  Widget ForegroundImage() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: devH * 0.4,
          ),
          ShrineCard('Hazratbal Shrine',
          'Hazratbal Shrine is the holiest shrine in Kashmir located on the banks of Dal Lake in Srinagar. This shrine houses a relic “Moi-e-Muqaddas” believed to be a strand of Prophet Muhammad’s hair. On specific occasions the relic hair is brought before the People. The Hazratbal shrine is the most popular shrine in Srinagar and is the most visited place in Srinagar. It is known for its stunning architecture and peaceful ambiance. Initially this place was known as Ishrat Jahan and later on it is convereted to a prayer by Shah Jahan in 1634. The shrine is surrounded by a beautiful garden and presents a beautiful view of Dal lake.',
          'assets/images/hazratbal.JPG',
          ),
            ShrineCard('Dastgeer Sahib',
          'Dastgeer Sahib , a Sufi shrine dedicated to Sheikh Syed Abdul Qadir Jelani, also known as Gous- E -Azam or the Great Helper. The shrine is believed to have been built in the 17th century and contains the relics of Dastgeer Sahib. It is also a center for Sufi gatherings and spiritual retreats. The shrine is believed to be around  200 years old and was constructed in 1806 by an Afghan traveller who presented a relic belonging to Sheikh Syed Abdul Qadir Jelani to the then governor of Kashmir. The relic is a hair strand of the saint, which is locally called Mouia Pak.',
          'assets/images/dastagirsahab.jpg',
          ),
          ShrineCard('Makhdoom Sahib',
          'Makhdoom Sahib shrine is one of the sacred shrine in Kashmir and important part of Sufi Tourism in Kashmir,  lies lies below the Mughal Fort, towards the south of Hari Parbat fort in Srinagar and is visited by thousands of devotees every year. This shrine is dedicated to Sheikh Hamza Makhdoom, who was sometimes referred to as  Makhdoom Sahib, Hazrat Sultan, Sultan-ul-Arifeen and Mehboob-ul-Alam.',
          'assets/images/makhdoomsahib.webp',
          ),
          ShrineCard('Baba Reshi Shrine',
          'Baba Reshi Shrine is one of the famous and sacred shrine in Kashmir lies district Baramulla. The shrine is located near Gulmarg in Baramulla district and is a popular religious and tourist destination.This shrine is dedicated to Baba Payamuddin Reshi, who is widely respected by both Muslims and Hindus in the region. Baba Reshi renounced his worldly life and devoted himself to the service of God and humanity.The shrine is surrounded by a beautiful forest area, where one can enjoy the scenic views of surroundings. ',
          'assets/images/babareshi.jpg',
          ),
          ShrineCard('Aishmuqam shrine',
          'Aishmuqam shrine is located in Ashmuqam ,One huge place for  Sufi Tourism in Kashmir , about 15 km from Anantnag town on the route to Pahalgam.The shrine is considered as one of the most visited and prominent shrines in Kashmir.  It was constructed in the honour of Shiekh Zain-ud-din, who was one among chief disciples of Nund Rishi.The Aishmuqam dargah is surrounded by lush greenery and offers a panoramic view of the valley below. The atmosphere is peaceful and serene, with the sound of birds and prayers filling the air.',
          'assets/images/aishmuqam.jpg',
          ),
          ShrineCard('Naqshband Sahib',
          'This shrine is named after the popular Sufi saint from Bukhara in Uzbekistan, Syed Baha-ud-Din Naqshband the founder of a Naqshbandi Sufi order. The mystic never visited Kashmir but his followers made a shrine in his name. In this Khankah, one of his descendants, Mohi-u-din, lies buried in a mausoleum.This shrine resides in Nowhatta on the road that links to Jamia Masjid and Dastgeer Sahib.',
          'assets/images/naqshbandsahab.jpg',
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