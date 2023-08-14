// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../../main.dart';
import 'WidgetBookShape2.dart';

btn(String text1, String text2, IconData icon) {
  return Column(
    children: [Text(text1), Icon(icon), Text(text2)],
  );
}

class BookTemplate extends StatelessWidget {
  String finalPath = '',
      bookName = '',
      author = '',
      link = '',
      descriptionText = '',
      genre='',
      pages='',
      lang=''; //imagepath
  BookTemplate(
      {required this.finalPath,
      required this.bookName,
      required this.author,
      required this.link,
      required this.descriptionText,
      required this.genre,
      required this.pages,
      required this.lang,
      });

  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;
    return Scaffold(
        
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_sharp),
            color: Colors.black,
          ),
          title: Text(
            'Back',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(devW * 0.05),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              BookShape2(imagepath: finalPath),
              SizedBox(
                height: devH * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    bookName,
                    
                    style: kSubHeading,
                  ),
                  IconButton(
                    onPressed: () async {
                      {
                        var url = link;
                        if (!await canLaunchUrlString(url)) {
                          await launchUrlString(url);
                        }
                      }
                      ;
                    },
                    icon: Icon(
                      Icons.arrow_drop_down_circle_outlined,
                      color: Colors.black,
                      size: devW * 0.1,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    author,
                    style: kSelText,
                  ),
                ],
              ),
              SizedBox(
                height: devH * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  btn('GENRE', genre, Icons.book_rounded),
                  btn('LENGTH', pages, Icons.menu_book),
                  btn('LANG', lang, Icons.language),
                ],
              ),
              SizedBox(
                height: devH * 0.03,
              ),
              Text(
                'Description',
                style: kHeading,
              ),
              SizedBox(
                height: devH * 0.01,
              ),
              Text(descriptionText),
            ]),
          ),
        ));
  }
}
