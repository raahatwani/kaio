// // ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, sized_box_for_whitespace, prefer_typing_uninitialized_variables
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../Cuisine/recipe.dart';
import '../constants.dart';
import '../main.dart';
import '../widgets/Recipe.dart';

class Cuisine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
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
            CarouselSlider(
              items: [
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.pink,
                ),
                Container(
                  color: Colors.yellow,
                ),
              ],
              options: CarouselOptions(
                height: 160.0,
                enlargeCenterPage: true,
                enlargeFactor: 0.5,
                aspectRatio: 16 / 9,
                enableInfiniteScroll: true,
                viewportFraction: 0.5,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            DefaultTabController(
              length: 5,
              child: Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(25.0)),
                      child: TabBar(
                        isScrollable: true,
                        indicator: BoxDecoration(
                            color: Color(0xff85586F),
                            borderRadius: BorderRadius.circular(25.0)),
                        tabs: [
                          Tab(text: 'Beverages'),
                          Tab(text: 'HomeMade'),
                          Tab(text: 'Wazwan'),
                          Tab(text: 'Deserts'),
                          Tab(text: 'Others'),
                        ],
                        labelColor: Colors.black,
                        // indicatorColor: Colors.blue,
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Beverages(),
                          HomeMade(),
                          Wazwan(),
                          Deserts(),
                          Others()
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
/////////////////////BEVERAGES////////////////////////////////////////////////
class Beverages extends StatelessWidget {
  const Beverages({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Text(
            'Bev',
            style: kHeading,
            textScaleFactor: devW * 0.006,
          ),
          RecipeImage(
              recipeName: 'KASHMIRI KEHWA: The Aromatic Elixir',
            name: Recipe(
              Category: 'BEVERAGES',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'KASHMIRI KEHWA: The Aromatic Elixir',
              RecipeDescription: 'The Kashmiri Kahwa is an exotic mix of Kashmiri green tea leaves, whole spices, nuts and saffron traditionally prepared in a brass kettle known as a samovar. The samovar has a central cavity to place the hot coal while boiling water and other tea ingredients is added in the surrounding space. There are different types of Kahwa tea with different combinations and distinct flavour and aroma.',
              buttonTexts: ['Water','Cardamom','Cinnamon','Saffron','Sugar','Kashmiri tea leaves','Chopped Almonds'],
              itemCount: 7,
            ),
          ),
          RecipeImage(
             recipeName: 'KASHMIRI NOON CHAI',
            name: Recipe(
              Category: 'BEVERAGES',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'KASHMIRI NOON CHAI: The Pink Elixir',
              RecipeDescription: 'Kashmiris are known to be the connoisseurs of tea and the pink-coloured noon chai or sheer chai is one of their traditional beverages. The chai is prepared with gunpowder tea (green tea leaves rolled into small balls), sea salt, milk and baking soda. Noon chai is a morning drink for the Kashmiris, and they also like to sip it during the working hours. ',
              buttonTexts: ['Water','Milk','Kashmiri tea leaves','Salt','Baking Soda'],
              itemCount: 5,
            ),
          ),
          RecipeImage(
            recipeName: 'BABRIBYOL SHARBAT',
            name: Recipe(
               Category: 'BEVERAGES',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'KASHMIRI BABRIBYOL SHARBAT',
              RecipeDescription: 'Babribyol is a ubiquitous drink in Kashmir during the holy month of Ramadhan. The drink enhances the beauty of iftaar. Prepared with basil seeds, raisins and cardamom, the drink has many health benefits. It helps reduce inflammation, high cholesterol and improve heart health. ',
              buttonTexts: ['Water','Milk','Basil seeds','Saffron','Cardamom','Sugar','Dry Fruits'],
              itemCount: 7,
            ),
          ),
           RecipeImage(
             recipeName: 'KESAR DOODH',
            name: Recipe(
               Category: 'BEVERAGES',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'KESAR DOODH',
              RecipeDescription: 'Kesar Doodh is delicious to taste and incredibly nutritious.',
              buttonTexts: ['Milk','Sugar','Dry Fruits'],
              itemCount: 3,
            ),
          ),
          RecipeImage(
            recipeName: 'KASHMIRI LASSI',
            name: Recipe(
               Category: 'BEVERAGES',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'KASHMIRI LASSI',
              RecipeDescription:'Prepared with mint leaves, yoghurt and cumin powder, it is the ultimate elixir for the digestive system.',
              buttonTexts: ['Yogurt','Water','Dried mint leaves','Salt','Roasted cumin powder'],
              itemCount: 5,
            ),
          ),
          RecipeImage(
            recipeName: 'KANJI',
            name: Recipe(
               Category: 'BEVERAGES',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'KANJI',
              RecipeDescription: 'Kanji is a healthy drink made by boiling black carrots in water and adding a few herbs and spices to give it a delicious flavour.',
              buttonTexts: ['Carrots','Mustard seeds','Black salt','Red chilli powder','Beetroot','Water'],
              itemCount: 6,
            ),
          ),
          RecipeImage(
            recipeName: 'GUD CHAI',
            name: Recipe(
              
               Category: 'BEVERAGES',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'GUD CHAI: The Sweetened Elixir',
              RecipeDescription: 'Gud Chai is a sweetened version of Kashmiri tea that uses jaggery as a natural sweetener instead of sugar which infuse the tea, creating a warm and comforting elixir.',
              buttonTexts: ['Water','Powdered jaggery','Cardamom','Milk','Pepper corns','Tea leaves'],
              itemCount: 6,
            ),
          ),
        ],
      ),
    );
  }
}


/////////////////////////////HOME MADE//////////////////////////////////////////


class HomeMade extends StatelessWidget {
  const HomeMade({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Text(
            'HomeMade',
            style: kHeading,
          ),
          // RecipeImage(
          //   name: Recipe(),
          // ),
          // RecipeImage(
          //   name: Recipe(),
          // ),
          // RecipeImage(
          //   name: Recipe(),
          // ),
        ],
      ),
    );
  }
}


//////////////////////////////////WAZWAN//////////////////////////////////////


class Wazwan extends StatelessWidget {
  const Wazwan({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Text(
            'Wazwan',
            style: kHeading,
          ),
          // RecipeImage(
          //   name: Recipe(),
          // ),
          // RecipeImage(
          //   name: Recipe(),
          // ),
          // RecipeImage(
          //   name: Recipe(),
          // ),
        ],
      ),
    );
  }
}


////////////////////////////////////////DESERTS/////////////////////////////////


class Deserts extends StatelessWidget {
  const Deserts({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Text(
            'Deserts',
            style: kHeading,
          ),
          // RecipeImage(
          //   name: Recipe(),
          // ),
          // RecipeImage(
          //   name: Recipe(),
          // ),
          // RecipeImage(
          //   name: Recipe(),
          // ),
        ],
      ),
    );
  }
}


//////////////////////////////OTHERS//////////////////////////////////////////


class Others extends StatelessWidget {
  const Others({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Text(
            'Others',
            style: kHeading,
          ),
          // RecipeImage(
          //   name: Recipe(),
          // ),
          // RecipeImage(
          //   name: Recipe(),
          // ),
          // RecipeImage(
          //   name: Recipe(),
          // ),
        ],
      ),
    );
  }
}
