// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, empty_constructor_bodies, must_be_immutable, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_typing_uninitialized_variables, sized_box_for_whitespace, avoid_print, unused_element, unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/data/literature.dart';
import 'package:kaio/main.dart';
import 'package:kaio/widgets/BookShape1.dart';
import '../Literature/Book.dart';

class LiteraturePage extends StatefulWidget {
  LiteraturePage({super.key});
  @override
  State<LiteraturePage> createState() => _LiteraturePageState();
}

class _LiteraturePageState extends State<LiteraturePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',hintStyle: kNormalText,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide:
                          BorderSide(color: Color(0xff85586F), width: 2)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide:
                          BorderSide(color: Color(0xff85586F), width: 2)),
                ),
              ),
            ),
            Text('My Books', style: kHeading),
            SizedBox(
              height: devH * 0.01,
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    BookShape(
                        name: Book(),
                        imagepath: 'assets/images/Literature/Poetry/argami.jpg'),
                    BookShape(
                        name: Book(),
                        imagepath: 'assets/images/Literature/Poetry/rasol.jpg'),
                    BookShape(
                        name: Book(),
                        imagepath: 'assets/images/Literature/Poetry/wali.jpg'),
                    BookShape(
                        name: Book(),
                        imagepath: 'assets/images/Literature/Poetry/kral.jpg'),
                    BookShape(
                        name: Book(),
                        imagepath: 'assets/images/Literature/Poetry/museeki.jpg'),
                  ],
                )),
            SizedBox(
              height: devH * 0.01,
            ),
            Text(
              'Book Shelf',
              style: kHeading,
            ),
            SizedBox(
              height: devH * 0.01,
            ),
            DefaultTabController(
              length: 4,
              child: Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0)),
                      child: Theme(data: myTheme,
                        child: TabBar(
                          indicator: BoxDecoration(
                              color: Theme.of(context).indicatorColor,
                              borderRadius: BorderRadius.circular(25.0)),
                          tabs: [
                            Tab(text: 'Poetry',),
                            Tab(text: 'Prose'),
                            Tab(text: 'History'),
                            Tab(text: 'New'),
                          ],
                          // labelColor: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Poetry(),
                          Prose(),
                          History(),
                          New(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Poetry(){
    return GridView.count(crossAxisCount: 2, children: poetry);
  }

  Widget History(){
    return GridView.count(crossAxisCount: 2, children: history);
  }

  Widget Prose(){
    return GridView.count(crossAxisCount: 2, children: prose);
  }

  Widget New(){
    return GridView.count(crossAxisCount: 2, children: newbook);
  }

}


