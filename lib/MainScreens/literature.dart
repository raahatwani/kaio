// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, empty_constructor_bodies, must_be_immutable, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_typing_uninitialized_variables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/widgets/bookshape.dart';
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
                  hintText: 'Search',
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
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    BookShape(name: Book(), imagepath: 'assets/argami.jpg'),
                    BookShape(name: Book(), imagepath: 'assets/rasol.jpg'),
                    BookShape(name: Book(), imagepath: 'assets/rahman.jpg'),
                    BookShape(name: Book(), imagepath: 'assets/kral.jpg'),
                    BookShape(name: Book(), imagepath: 'assets/museeki.jpg'),
                  ],
                )),
            Text(
              'Book Shelf',
              style: kHeading,
            ),
            DefaultTabController(
                      length: 5,
                      child: Expanded(
                        child: 
                            Column(
                              children: [
                                Container(height: 45,
                                decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(25.0)),
                                  child: TabBar( indicator: BoxDecoration(
                                                    color: Color(0xff85586F),
                                                    borderRadius:  BorderRadius.circular(25.0)
                                                  ) ,
                                    tabs: [
                                      Tab(text: 'Poetry'),
                                      Tab(text: 'History'),
                                       Tab(text: 'Famous Writers'),
                                      Tab(text: 'Religion'),
                                       Tab(text: 'Folk'),
                                       
                                      
                                    ],
                                    labelColor: Colors.black,
                                    
                                   
                                  ),
                                ),
                                Expanded(
                              child: TabBarView(
                                children: [
                                  Poetry(),
                                  History(),
                                  FamousWriters(),
                                  Religion(),
                                  History()
                                  
                                  
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
}

class Poetry extends StatelessWidget {
  const Poetry({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        BookShape(name: Book(), imagepath: 'assets/argami.jpg'),
        BookShape(name: Book(), imagepath: 'assets/argami.jpg'),
        BookShape(name: Book() , imagepath: 'assets/argami.jpg'),
        BookShape(name: Book() , imagepath: 'assets/argami.jpg'),
        BookShape(name: Book() , imagepath: 'assets/argami.jpg'),
        BookShape(name: Book() , imagepath: 'assets/argami.jpg'),
        BookShape(name: Book() , imagepath: 'assets/argami.jpg'),
        BookShape(name: Book() , imagepath: 'assets/argami.jpg'),
        
      ],
    );
  }
}

class Default extends StatelessWidget {
  const Default({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        BookShape(name: Book() , imagepath: 'assets/rasol.jpg'),
        BookShape(name: Book() , imagepath: 'assets/rasol.jpg'),
        BookShape(name: Book() , imagepath: 'assets/rasol.jpg'),
        BookShape(name: Book() , imagepath: 'assets/rasol.jpg'),
        BookShape(name: Book() , imagepath: 'assets/rasol.jpg'),
        BookShape(name: Book() , imagepath: 'assets/rasol.jpg'),
        BookShape(name: Book() , imagepath: 'assets/rasol.jpg'),
        BookShape(name: Book() , imagepath: 'assets/rasol.jpg'),
      ],
    );
  }
}

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        BookShape(name: Book() ,imagepath: 'assets/kral.jpg'),
        BookShape(name: Book() ,imagepath: 'assets/kral.jpg'),
        BookShape(name: Book() ,imagepath: 'assets/kral.jpg'),
        BookShape(name: Book() ,imagepath: 'assets/kral.jpg'),
        BookShape(name: Book() ,imagepath: 'assets/kral.jpg'),
        BookShape(name: Book() ,imagepath: 'assets/kral.jpg'),
      ],
    );
  }
}

class FamousWriters extends StatelessWidget {
  const FamousWriters({super.key});


  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        BookShape(name: Book() ,imagepath: 'assets/mehjoor.jpg'),
        BookShape(name: Book() ,imagepath: 'assets/mehjoor.jpg'),
        BookShape(name: Book() , imagepath: 'assets/mehjoor.jpg'),
        BookShape(name: Book() ,imagepath: 'assets/mehjoor.jpg'),
        BookShape(name: Book() , imagepath: 'assets/mehjoor.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
      ],
    );
  }
}

class Religion extends StatelessWidget {
  const Religion({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
        BookShape(name: Book() , imagepath: 'assets/shamas.jpg'),
      ],
    );
  }
}
