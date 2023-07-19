// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


import '../main.dart';

class Travel extends StatelessWidget {
  
var name;
  Travel({required this.name});
  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    return GestureDetector(
          onTap: () {
           Navigator.push((context), MaterialPageRoute(builder: (context) => name));
      
          },
          child: Container(
            height: devH * 0.4,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25), color: Colors.purple),
          ),
        );
  }
}
