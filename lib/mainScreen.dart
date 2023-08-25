// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, file_names, must_be_immutable, camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:kaio/MainScreens/Cuisine.dart';
import 'package:kaio/MainScreens/Culture.dart';
import 'package:kaio/MainScreens/destinations.dart';
import 'package:kaio/MainScreens/handicrafts.dart';
import 'package:kaio/MainScreens/literature.dart';
import 'package:kaio/constants.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  @override

  
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: CustomScrollView(
          slivers: [
            CustomAppBar(),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  ourServices(),
                ],
              ),
            ),
          ],
        ),
        endDrawer: AppDrawer(),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(300.0);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(elevation: 20,
      title: Text(
        'Kaio',
        style: kHeading.copyWith(color: Color(0xff00A095)),
      ),
      backgroundColor: (Color(0xffFBC757)),
      expandedHeight: 300.0,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Theme.of(context).scaffoldBackgroundColor,],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Discover Kashmir:\n Heritage, Culture, and More',
                  textAlign: TextAlign.center,
                  style: kSubHeading
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Discover your Kashmiri heritage with Kaio, the mobile app that immerses you in the rich literature, delicious cuisines, exquisite handicrafts, breathtaking destinations, and vibrant culture of Kashmir.',
                  textAlign: TextAlign.justify,
                  style: kNormalText,
                ),
              ],
            ),
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.arrow_forward_ios,
            
            size: 20.0,
          ),
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
        ),
      ],
      actionsIconTheme: IconThemeData(color: Color(0xff00A095), size: 36),
    );
  }
}


class ourServices extends StatelessWidget {
  const ourServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Our Services',
              style: kSubHeading,
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Theme.of(context).primaryColor),
              ),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'View All Services',style: kNormalText,
                ),
              )
              ),
              
          ServiceCard(
              nextpage: LiteraturePage(),
              service: 'Literature',
              imagePath: 'assets/images/MainScreen/kliterature.png',
              description:
                  'Embarking on a journey to discover Kashmiri literature is to open a door to a world where language becomes a bridge connecting hearts and minds across time and space.Discovering Kashmiri literature is like embarking on a journey through the captivating landscapes of both the region and the human experience.'),
          ServiceCard(
              nextpage: Cuisine(),
              service: 'Cuisines',
              description:
                  'Embarking on a journey to discover Kashmiri cuisine is akin to unraveling a symphony of flavors and traditions. Rooted in the fertile valleys of the Himalayas, Kashmiri cuisine is a harmonious blend of aromatic spices, delicate herbs, and locally sourced ingredients. ',
              imagePath: 'assets/images/MainScreen/kcuisine.png'),
          ServiceCard(
              nextpage: Handicraft(),
              service: 'Handicrafts',
              description:
                  'Embarking on a journey to discover Kashmiri handicrafts is like stepping into a realm of timeless artistry and intricate craftsmanship. Nestled in the heart of the Himalayas, Kashmir has been a cradle of creativity for centuries, producing exquisite handwoven Pashmina shawls, intricately carved walnut woodwork, vibrant papier-mâché artifacts, and intricate embroidered textiles.',
              imagePath: 'assets/images/MainScreen/khandicrafts.png'),
          ServiceCard(
              nextpage: Destination(),
              service: 'Destinations',
              description:
                  'Embarking on a journey to discover Kashmiri destinations is like stepping into a realm of natural beauty and cultural richness. From the serene Dal Lake, where houseboats gently glide on mirrored waters, to the majestic vistas of Gulmarg\'s snow-covered peaks, every corner of this region is a testament to nature\'s artistry.',
              imagePath: 'assets/images/MainScreen/kdestinations.png'),
          ServiceCard(
              nextpage: Culture(),
              service: 'Culture',
              description:
                  'Embarking on a journey to discover Kashmiri culture is like unveiling a mosaic of traditions, art, and spirituality that have flourished in the lap of the Himalayas. The culture is a symphony of diverse influences, blending Persian, Central Asian, and Indian elements to create a tapestry that is uniquely Kashmiri.',
              imagePath: 'assets/images/MainScreen/kculture.png'),
        ],
      ),
    );
  }
}




class ServiceCard extends StatefulWidget {
   String service = '', description = '', imagePath;
  var nextpage;
  ServiceCard(
      {super.key,
      required this.service,
      required this.description,
      required this.imagePath,
      required this.nextpage});

  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6, 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0), 
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
            child: Image(
              image: AssetImage(widget.imagePath),
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Discover Your Kashmiri ${widget.service}',
                  style: kSubHeading,
                ),
                SizedBox(height: 8.0),
                Text(
                  widget.description,
                  style: kNormalText,
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 12.0),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).primaryColor,
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => widget.nextpage));
                  },
                  child: Text(
                    'Explore More',
                    style: kNormalText,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          

         DrawerHeader(
  decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Colors.white,
       Color(0xffFBC757),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  child: Align(
    alignment: Alignment.center,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Scaffold.of(context).closeEndDrawer();
              
            },
          ),
        ),
        // SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text('Kaio App', style: kHeading),
        ),
      ],
    ),
  ),
)

,
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Literature'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => LiteraturePage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.restaurant),
            title: Text('Cuisine'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => Cuisine()));
            },
          ),
          ListTile(
            leading: Icon(Icons.handyman),
            title: Text('Handicrafts'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => Handicraft()));
            },
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Destinations'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => Destination()));
            },
          ),
          ListTile(
            leading: Icon(Icons.theater_comedy),
            title: Text('Culture'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => Culture()));
            },
          ),
        ],
      ),
    );
  }
}
