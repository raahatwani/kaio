// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';
import '../main.dart';

class Heritage extends StatelessWidget {
  Heritage({super.key});

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
          fit: BoxFit.cover,
          image: AssetImage('assets/images/heritageofkashmir.webp')),
    );
  }

  Widget ForegroundImage() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: devH * 0.4,
          ),
          HeritageCard('Hari Parbat Fort',
          'Hari Parbat  also known as Kooh-e-Maran lies on the west of Dal Lake in Srinagar. This Mughal structure was built by an Afghan Governor Atta Mohammed Khan in the 18th century. Surrounded by commendable structures from all religions, this fort sits at the top giving a spectacular view of Dal Lake and provides a top view of Makhdoom Sahib shrine.',
          'assets/images/hariparbatfort.jpg',
          ),
           HeritageCard(
              'Pari Mahal',
              'Seven-terraced garden, also called the abode of fairies or the home of angels, the historical monument sits on top of the Zabarwan range overlooking Srinagar and the Dal Lake.It was built by Dara Shikoh, the eldest son of the Mughal Emperor Shah Jahan. It is believed that the mahal was once a Buddhist monastery. Later on, it served as a school of astrology for prince Dara Shikoh. The architecture of Pari Mahal is a traditional Islamic type of architecture while the surrounding gardens are exceptionally well maintained.',
              'assets/images/pariimahal.jpg',
          ),
          HeritageCard(
              'Martand Sun Temple',
              'Martand Sun Temple  also referred to as the Dream of Stones is located in Anantnag, Jammu and Kashmir, India, on Surya Mandir Road. Lalitaditya Muktapida, the ruler of an empire of the Karkota dynasty, constructed the temple throughout the 8th century CE. Another Ancient title for the worshipped Hindu Sun god is Martand. Lord Sun is honoured at this shrine.',
              'assets/images/martandsuntemple.jpg',
          ),
           HeritageCard(
              'Parihaspora Ruins',
              'Parihaspora, locally known as Kani Shahar, is believed to be the ancient capital of Kashmir. The town falls at a distance of 20 kilometers from the summer capital Srinagar.The city of Parihaspora was built on a plateau above the river Jhelum by the king Lalitaditya Muktapida and served as the capital of Kashmir during his reign. The town falls at the tail end of Baramulla district.',
              'assets/images/parihaspora.jpeg',
          ),
          HeritageCard(
              'Pathar Mosque',
              'Pathar Mosque, known locally as Naev Masheed,is a Mughal era stone mosque located in the old city of Srinagar, in the Indian state of Jammu and Kashmir. It is located on the left bank of the River Jhelum, just opposite the shrine of Khanqah-e-Moula. It was built by Mughal Empress Noor Jehan, the wife of emperor Jehangir, in 1623, for Shi’a Muslim Population.',
              'assets/images/patharmosque.jpg',
          ),
          
          HeritageCard(
              'Kathi Darwaza',
              'Kathi Darwaza is considered to be the main entrance to the Hari Parbat Fort situated on the banks of the Dal Lake. The Sangin Darwaza constitutes another important gate of the Fort. A central domed chamber with two bays on either side makes up the structure of the Kathi Darwaza. On the walls and ceiling of the Kathi Darwaza are etched a few Persian memorial inscriptions that shed light on the Persian culture and customs that were once followed by the Mughal rulers.',
              'assets/images/kathidarwaza.jpg',
          ),
          HeritageCard(
              'Khanqah-e-Moula',
              'Khanqah-e-Moula is situated in Srinagar, on the banks of the river Jhelum. One of the oldest Muslim shrines in Kashmir, the khanqah was built by Sultan Sikander built in 1395. The Khanqah is a wooden structure whose chief aesthetic feature is its beautifully carved eaves and hanging bells. The interiors are richly carved and painted, and the antique chandeliers give it an air of opulence. The Khanqah-i-Mualla is dedicated to Muslim preacher Mir Syed Ali Hamdani.',
              'assets/images/khanqahemoula.jpg',
          ),
          HeritageCard(
              'Budshah Tomb',
              'The Budshah Tomb is a superb example of the traditional Shahmiri architectural brilliance that has not yet been discovered anywhere in India. Near Zaina Kadal in Srinagar, on the right riverside of the River Jhelum, is the monument or memorial place. In comparison to other historic buildings and tombs, Budshah Tomb is therefore regarded as the only one of its kind in and around Kashmir. This Tomb is a brick structure in contrast to the conventional wooden Shahmiri architecture seen in Kashmir because it was built with bricks rather than wood during that period. ',
              'assets/images/budshahtomb.jpg',
          ),
          HeritageCard(
              'Jamia Masjid',
              'Jamia Masjid is a 600-year-old mosque in Srinagar, located in the Nowhatta area amidst the bustle of local bazaars. The tranquil mosque is known for its unique architecture, the highlight being the 378 wooden Deodar pillars. The mosque becomes especially crowded on Fridays. The fountain inside the mosque premise is used for ablution or wadu.Jamia Masjid was built by Sultan Sikandar Shah Kashmiri Shahmiri in 1394, under the orders of Mir Mohammad Hamadani, who was the son of Said-ul-Auliya Mir Sayyid Ali Hamadani. Sultan Sikandar\'s son, Zain-ul-Abidin, later on, extended the Jama Masjid by including turret in the primary structure. The architectural style of the Jamia Masjid is inspired by the Indo-Saracenic style of architecture, and also bears similarities to Buddhist pagodas. ',
              'assets/images/jamiamasjid.jpg',
          ),
          HeritageCard(
              'Akhund Mullah Shah Masjid',
              'Akhund Mullah Shah Masjid, also known as Dara Shikoh Masjid, is known better locally as the Mala Shah Masjid. Built in 1649 by Shah Jahan\'s eldest son, Dara Shikoh, for his spiritual mentor, this is a mosque within a mosque. It was built using grey limestone, featuring a glossy texture. The sanctuary is separated from the main building by a surrounding courtyard. A stone lotus with an inscription crowns the mosque’s podium.',
              'assets/images/akhundmullahshahmasjid.jpg',
          ),
          HeritageCard(
              'Burzahom',
              'Burzahom Archaeological Site is a prehistoric settlement located in the village of the Burzahom in the Srinagar District of Jammu and Kashmir, India. Located in the valley of Kashmir, the archaeological excavations of the ancient site and remains at the Burzahom archaeological site date back to 3000 BC and 1000 BC. The large cache of tools and implements made of bone and stone found at the site shows that the inhabitants were hunting and farming. It is located on a \'karewa\' between the banks of the Dal Lake and the Zabarvan hills, about 5 km from the famous Mughal garden of Shalimar. Burzahom Archaeological Site is located at approx 14km from Srinagar',
              'assets/images/burzahom.jpg',
          ),
          
           HeritageCard(
              'Harwan Monastery',
              'On the outskirts of Srinagar in Harwan, lie the ruins of an old Buddhist Monastery. It is hard to imagine the importance of the site from its ruins. But this ancient monastery played a pivotal role in the history of Buddhism. It is here, that the 4th Buddhist council of the Mahayana (Sarvastivada) school of Buddhism was held sometime in the 1st or 2nd century CE, on the orders of the Kushana emperor Kanishka I. It was also the home to one of the greatest Buddhist masters of his time, Nagarjuna (150-250 CE) , who propounded the theory of ‘Sunyata’ or ‘Emptiness’ which went on to revolutionize Buddhist thought. Sadly, the significance of the site seems to have been lost somehow in the modern times. As has the significance of Kashmir, in the history of Buddhism.',
              'assets/images/harwanmonastry.jpeg',
          ),
        ],
      ),
    );
  }

  Widget HeritageCard(heading,description,imagePath) {
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