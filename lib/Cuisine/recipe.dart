// // ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors, must_be_immutable

// ignore_for_file: must_be_immutable


import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';
import 'cook.dart';
import '../main.dart';

class Recipe extends StatelessWidget {
  int itemCount;
  List buttonTexts = [];
  String RecipeName = '';
  String RecipeDescription='';
  String imagePath='';
  String Category='';
  Recipe(
      {required this.itemCount,
      required this.buttonTexts,
      required this.RecipeName,
      required this.RecipeDescription,
      required this. imagePath,
      required this. Category});

  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.grey.shade400,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_sharp),
            color: Color(0xff85586F),
          ),
          title:  Text(Category, style: kHeading),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Center(
            child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(imagePath),
                        radius: devW * 0.3,
                      ),
                      
                      Text(
                        RecipeName,
                        style: kHeading,
                      ),
                      Text(
                        RecipeDescription,
                        style: kSelText,
                      ),
                      
                      Text(
                        'Ingredients:',
                        style: kHeading,
                      ),
                      SizedBox(
                        height: devH * 0.02,
                      ),
                      Container(
                        // color: Colors.amber,
                        width: devW,
                        height: devH * 0.30,
                        child: GridView.builder(
                          itemCount: itemCount,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 2,
                          ),
                          itemBuilder: (context, index) {
                            buttonTexts;
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              child: SizedBox(
                                width: devW * 0.01,
                                height: devH * 0.03,
                                child: OutlinedButton(
                                  child: Text(
                                    buttonTexts[index],
                                    style: kSelText,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: devH*0.08,),
                      SizedBox(
                        height: devH * 0.07,
                        width: devW,
                        child: FilledButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Cook()));
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color(0xff85586F)), // Change the color here
                          ),
                          child: Text(
                            "Let's cook this recipie",
                          ),
                        ),
                      )
                    ]))));
  }
}





