// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GalleryPage extends StatefulWidget {
  @override
  
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {

late http.Response apiResp;
var imgData;
String url='https://api.unsplash.com/photos/?client_id=HDun6AM7gvQPnGI-B6ei8xIaD5F6Y02ZPUUwDRYDkxU';

List data=[];
List<String> imgUrl=[];
getData() async {
  apiResp = await http.get(Uri.parse(url));
  data = jsonDecode(apiResp.body);
  _assign();
  

}

 _assign(){
  for (var i = 0; i < data.length; i++) {
    imgUrl.add(data.elementAt(i)["urls"]["regular"]);
    
  }
  
 }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      body: GridView.builder(
        itemCount: data.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                 image: DecorationImage(
                  image: NetworkImage(imgUrl.elementAt(index)),
                  fit: BoxFit.cover,
               
              ),
            ),
          ));
        },
      ),
    );
  }
}
