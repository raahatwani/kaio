// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';

import '../main.dart';

// ignore: camel_case_types
class Travel_new extends StatelessWidget {
 
var name;
  Travel_new({required this.name});
  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => name));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: devH * 0.50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(
              image: AssetImage('assets/gulmarg.jpg'), fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Destination',
              style: kHeading,
            ),
            Row(
              children: [
                Icon(
                  Icons.pin_drop_outlined,
                  color: Colors.white,
                ),
                Text(
                  'Location',
                  style: kHeading,
                ),
                SizedBox(
                  width: devW * 0.40,
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next,size: 40,weight: 3,))
              ],
            ),
            SizedBox(
              height: devH * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}