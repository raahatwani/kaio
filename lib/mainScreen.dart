// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, file_names, must_be_immutable, camel_case_types, prefer_typing_uninitialized_variables, sized_box_for_whitespace

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/data/MainScreen.dart';
import 'package:kaio/main.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher_string.dart';

TextEditingController feedbackcontroller = TextEditingController();

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
                  OurServices(),
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
      elevation: 20,
      title: Text(
        'K-AIO',
        style: kTitle,
      ),
      automaticallyImplyLeading: false,
      backgroundColor: (Theme.of(context).primaryColor), //GREEN
      expandedHeight: 300.0,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Theme.of(context).scaffoldBackgroundColor,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Text('Discover Kashmir:\n Heritage, Culture, and More',
                      textAlign: TextAlign.center, style: kSubHeading),
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
          ),
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
        ),
      ],
      actionsIconTheme: IconThemeData(color: Color(0xff473144), size: 25),
    );
  }
}

class OurServices extends StatelessWidget {
  const OurServices({super.key});

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
          Column(children: ServiceList)
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
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 10.0, left: 10.0, top: 15.0, bottom: 5.0),
              child: Image(
                image: AssetImage(widget.imagePath),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Discover Your Kashmiri ${widget.service}',
                    style: kSubHeading,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Text(
                    widget.description,
                    style: kNormalText,
                    textAlign: TextAlign.justify,
                  ),
                ),
                ElevatedButton(
                  style: button,
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
      backgroundColor: Colors.transparent,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: devH * 0.1,
            child: DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Theme.of(context).primaryColor,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xff473144),
                    ),
                    onPressed: () {
                      Scaffold.of(context).closeEndDrawer();
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: devW * 0.15),
                    child: Text('K-AIO', style: kTitle),
                  ),
                ],
              ),
            ),
          ),
          Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    Theme.of(context).scaffoldBackgroundColor,
                  ],
                ),
              ),
              child: Column(
                children: [
                  Column(
                    children: items,
                  ),
                  ShareTile(),
                  DeveloperTile(
                    developerName: 'Raahat',
                    linkedInProfile:
                        'https://www.linkedin.com/in/raahat-khurshid-38439025a?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app',
                  ),
                  DeveloperTile(
                    developerName: 'Ahba',
                    linkedInProfile:
                        'https://www.linkedin.com/in/ahba-lateef-zarkoob-9a503920b?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app',
                  ),
                  ListTile(
                    leading: Icon(Icons.star),
                    title: Text('Review and Feedback'),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return FeedbackDialog();
                        },
                      );
                    },
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class DrawerItems extends StatelessWidget {
  IconData icon;
  String title;
  var nextpage;
  DrawerItems(
      {required this.icon, required this.title, required this.nextpage});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => nextpage));
      },
    );
  }
}

class ShareTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.share),
      title: Text('Share This App'),
      onTap: () {
        Share.share('com.example.kaio');
      },
    );
  }
}

class DeveloperTile extends StatelessWidget {
  final String developerName;
  final String linkedInProfile;

  DeveloperTile({required this.developerName, required this.linkedInProfile});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.account_circle),
      title: Text(developerName),
      onTap: () async {
        if (!await canLaunchUrlString(linkedInProfile)) {
          await launchUrlString(linkedInProfile);
        } else {
          throw 'Could not launch $linkedInProfile';
        }
      },
    );
  }
}

final formGlobalKey = GlobalKey<FormState>();

class FeedbackDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: Text('Review and Feedback', style: kSubHeading),
      content: Form(
        key: formGlobalKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Please leave your feedback and review below:',
                style: kNormalTextBold),
            TextFormField(
              controller: feedbackcontroller,
              decoration: InputDecoration(hintText: 'Your feedback...'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).primaryColor)),
              onPressed: () async {
                if (formGlobalKey.currentState!.validate()) {
                  String feedbackId =
                      DateTime.now().microsecondsSinceEpoch.toString();
                  await FirebaseFirestore.instance
                      .collection('feedback')
                      .doc(feedbackId)
                      .set({
                    'FID': feedbackId,
                    'FeedBack': feedbackcontroller.text,
                  }).then((_) {
                    feedbackcontroller.clear();
                    Navigator.of(context).pop();
                    _showThankYouDialog(context);
                  });
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  void _showThankYouDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text('Thank you for your feedback', style: kNormalText),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK', style: kNormalTextBold),
            ),
          ],
        );
      },
    );
  }
}
