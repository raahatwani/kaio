// ignore_for_file: must_be_immutable, prefer_const_constructors, use_key_in_widget_constructors, prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';

import '../main.dart';

class BookShape extends StatelessWidget {
  String imagepath = '';
  var name;
  BookShape({
    required this.name,
    required this.imagepath,
   
  });

  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
       
        Navigator.push(context, MaterialPageRoute(builder: (context) => name),
        );
      },
      child: Container(
        height: devW * 0.35,
        width: devW * 0.3,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color(0xffFBC757), width: 3),
            image: DecorationImage(
                image: AssetImage(imagepath), fit: BoxFit.fill)),
      ),
    );
  }
}
