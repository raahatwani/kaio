// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, annotate_overrides

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kaio/constants.dart';

class GalleryPage extends StatefulWidget {
  
  @override
  
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {

late http.Response apiResp;
String url='https://api.unsplash.com/collections/68212178/photos/?client_id=HDun6AM7gvQPnGI-B6ei8xIaD5F6Y02ZPUUwDRYDkxU';

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
  setState(() {});
 }

  @override
  void initState() {
    super.initState();
    getData(); 
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:  AppBar(
                title: Text(
                  'Kaio',
                  style: kSubHeading,
                ),
                backgroundColor: Color(0xffFBC757),
              ),
        body: imgUrl.isEmpty
            ? Center(child: CircularProgressIndicator(color: Color(0xffFBC757),)) 
            : GridView.builder(
          itemCount: data.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
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
      ),
    );
  }
}
