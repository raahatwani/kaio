// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, file_names

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
    return SliverAppBar(
      title: Text(
        'Kaio',
        style: kHeading,
      ),
      backgroundColor: Colors.white,
      expandedHeight: 300.0,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.deepPurpleAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Discover Kashmir:\n Heritage, Culture, and More',
                  textAlign: TextAlign.center,
                  style: kSubHeading,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Discover your Kashmiri heritage with Kaio, the mobile app that immerses you in the rich literature, delicious cuisines, exquisite handicrafts, breathtaking destinations, and vibrant culture of Kashmir.',
                  textAlign: TextAlign.justify,
                  style: kSelText,
                ),
              ],
            ),
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.menu,
            color: Color(0xff85586F),
            size: 40.0,
          ),
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
        ),
      ],
      actionsIconTheme: IconThemeData(color: Color(0xff85586F), size: 36),
    );
  }
}

Widget heroCard() {
  return const Card(
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Discover Kashmir: Heritage,\n Culture, and More',
            style: kHeading,
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Discover your Kashmiri heritage with Kaio, the mobile app that immerses you in the rich literature, delicious cuisines, exquisite handicrafts, breathtaking destinations, and vibrant culture of Kashmir.',
            textAlign: TextAlign.justify,
            style: kSelText,
          ),
        )
      ],
    ),
  );
}

Widget ourServices() {
  return Card(
    child: Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Our Services',
            style: kSubHeading,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'View All Services',
                ),
              )),
        ),
        ServiceCard(
            nextpage: LiteraturePage(),
            service: 'Literature',
            imagePath: 'assets/images/Handicrafts/Carousel/Shawl/Shawl.png',
            description:
                'Heritage Discovery offers a comprehensive and formal service that helps individuals uncover their ancestral roots and explore their rich heritage.'),
        ServiceCard(
            nextpage: Cuisine(),
            service: 'Cuisines',
            description:
                'Heritage Discovery offers a comprehensive and formal service that helps individuals uncover their ancestral roots and explore their rich heritage.',
            imagePath: 'assets/images/Handicrafts/Carousel/Shawl/Shawl.png'),
        ServiceCard(
            nextpage: Handicraft(),
            service: 'Handicrafts',
            description:
                'Heritage Discovery offers a comprehensive and formal service that helps individuals uncover their ancestral roots and explore their rich heritage.',
            imagePath: 'assets/images/Handicrafts/Carousel/Shawl/Shawl.png'),
        ServiceCard(
            nextpage: Destination(),
            service: 'Destinations',
            description:
                'Heritage Discovery offers a comprehensive and formal service that helps individuals uncover their ancestral roots and explore their rich heritage.',
            imagePath: 'assets/images/Handicrafts/Carousel/Shawl/Shawl.png'),
      ],
    ),
  );
}

// ignore: must_be_immutable
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
      child: Column(
        children: [
          Container(
            child: Image(
              image: AssetImage(widget.imagePath),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Discover Your Kashmiri ${widget.service}'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.description),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => widget.nextpage));
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Explore More'),
                )),
          )
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
                colors: [Colors.white, Colors.deepPurpleAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Center(child: Text('Kaio App', style: kHeading)),
          ),
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
