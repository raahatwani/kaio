// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors, must_be_immutable, non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';
import '../main.dart';

class Recipe extends StatelessWidget {
  String RecipeName = '', RecipeDescription = '', Category = '';
  int itemCount;
  var imagePath;
  List buttonTexts = [];
  List<StepCard> listname = [];
  Recipe(
      {required this.Category,
      required this.imagePath,
      required this.RecipeName,
      required this.RecipeDescription,
      required this.itemCount,
      required this.buttonTexts,
      required this.listname});

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
            icon: Icon(Icons.arrow_back_sharp),color: Colors.black,
          ),
          title: Text(Category, style: kHeading),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Padding(
                  padding: EdgeInsets.all(devW * 0.02),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(imagePath),
                          radius: devW * 0.35,
                        ),
                        Padding(
                          padding: EdgeInsets.all(devW * 0.009),
                          child: Text(
                            RecipeName,
                            style: kHeading,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(devW * 0.005),
                          child: Text(
                            RecipeDescription,
                            style: kNormalText,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(devW * 0.02),
                          child: Text(
                            'Ingredients:',
                            style: kSubHeading,
                          ),
                        ),
                        Container(
                          width: devW,
                          height: devH * 0.3,
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
                                padding: const EdgeInsets.all(2.0),
                                child: OutlinedButton(
                                  child: Center(
                                    child: Text(
                                      buttonTexts[index],
                                      style: kNormalText
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              );
                            },
                          ),
                        ),
                        Card(
                            child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Recipe',
                                style: kSubHeading,
                              ),
                            ),
                            Column(
                              children: listname,
                            )
                          ],
                        ))
                      ]))),
        ));
  }
}

class StepCard extends StatelessWidget {
  String Step, body;
  StepCard({required this.Step, required this.body});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: [
            Text(
              Step,
              style: kNormalTextBold,
            ),
            Text(
              body,
              style: kNormalText,
            )
          ],
        ),
      ),
    );
  }
}
