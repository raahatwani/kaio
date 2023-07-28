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
            recipeName: 'KASHMIRI KEHWA',
            name: Recipe(
              Category: 'BEVERAGES',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'KASHMIRI KEHWA: The Aromatic Elixir',
              RecipeDescription:
                  'The Kashmiri Kahwa is an exotic mix of Kashmiri green tea leaves, whole spices, nuts and saffron traditionally prepared in a brass kettle known as a samovar.',
              buttonTexts: [
                'Water',
                'Cardamom',
                'Cinnamon',
                'Saffron',
                'Sugar',
                'Kashmiri tea leaves',
                'Chopped Almonds'
              ],
              itemCount: 7,
            ),
          ),
          RecipeImage(
            recipeName: 'KASHMIRI NOON CHAI',
            name: Recipe(
              Category: 'BEVERAGES',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'KASHMIRI NOON CHAI: The Pink Elixir',
              RecipeDescription:
                  'Kashmiris are known to be the connoisseurs of tea and the pink-coloured noon chai or sheer chai is one of their traditional beverages.',
              buttonTexts: [
                'Water',
                'Milk',
                'Kashmiri tea leaves',
                'Salt',
                'Baking Soda'
              ],
              itemCount: 5,
            ),
          ),
          RecipeImage(
            recipeName: 'BABRIBYOL SHARBAT',
            name: Recipe(
              Category: 'BEVERAGES',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'KASHMIRI BABRIBYOL SHARBAT',
              RecipeDescription:
                  'Babribyol is a ubiquitous drink in Kashmir during the holy month of Ramadhan.',
              buttonTexts: [
                'Water',
                'Milk',
                'Basil seeds',
                'Saffron',
                'Cardamom',
                'Sugar',
                'Dry Fruits'
              ],
              itemCount: 7,
            ),
          ),
          RecipeImage(
            recipeName: 'KESAR DOODH',
            name: Recipe(
              Category: 'BEVERAGES',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'KESAR DOODH',
              RecipeDescription:
                  'Kesar Doodh is delicious to taste and incredibly nutritious.',
              buttonTexts: ['Milk', 'Sugar', 'Dry Fruits'],
              itemCount: 3,
            ),
          ),
          RecipeImage(
            recipeName: 'KASHMIRI LASSI',
            name: Recipe(
              Category: 'BEVERAGES',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'KASHMIRI LASSI',
              RecipeDescription:
                  'Prepared with mint leaves, yoghurt and cumin powder, it is the ultimate elixir for the digestive system.',
              buttonTexts: [
                'Yogurt',
                'Water',
                'Dried mint leaves',
                'Salt',
                'Roasted cumin powder'
              ],
              itemCount: 5,
            ),
          ),
          RecipeImage(
            recipeName: 'KANJI',
            name: Recipe(
              Category: 'BEVERAGES',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'KANJI',
              RecipeDescription:
                  'Kanji is a healthy drink made by boiling black carrots in water and adding a few herbs and spices to give it a delicious flavour.',
              buttonTexts: [
                'Carrots',
                'Mustard seeds',
                'Black salt',
                'Red chilli powder',
                'Beetroot',
                'Water'
              ],
              itemCount: 6,
            ),
          ),
          RecipeImage(
            recipeName: 'GUD CHAI',
            name: Recipe(
              Category: 'BEVERAGES',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'GUD CHAI: The Sweetened Elixir',
              RecipeDescription:
                  'Gud Chai, also known as "Jaggery Tea," is a sweetened version of Kashmiri tea that uses jaggery as a natural sweetener instead of sugar.',
              buttonTexts: [
                'Water',
                'Powdered jaggery',
                'Cardamom',
                'Milk',
                'Pepper corns',
                'Tea leaves'
              ],
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
          RecipeImage(
            name: Recipe(
              Category: 'HOME MADE',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'Kashmiri Rajma',
              RecipeDescription:
                  'A lip-smacking dish flavoured by tomato puree slow-cooked in a loch full of tasty Indian spice, the Rajma Kashmiri is a much-loved curry. ',
              buttonTexts: [
                'Kashmiri Rajma',
                'Onion',
                'Tomato',
                'Tomato Puree',
                'Ginger Garlic Paste',
                'Asafoetida/Hing',
                'Dry Ginger Powder',
                'Cumin'
              ],
              itemCount: 8,
            ),
            recipeName: 'Rajma',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'HOME MADE',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'Kashmiri Al Yakni',
              RecipeDescription:
                  'Kashmiri Al Yakhni is a popular recipe that is prepared in Kashmiri households for their everyday meals. Here, Al means “lauki” and yakhni means “yogurt based gravy”.',
              buttonTexts: [
                'Bottle Gourd',
                'Oil',
                'Yogurt',
                'Cloves',
                'Cardamom',
                'Cinnamon',
                'Fennel Powder',
                'Ginger Powder',
                'Cumin Seeds',
                'Salt',
                'Shahi Jeera'
              ],
              itemCount: 11,
            ),
            recipeName: 'Al Yakni',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'HOME MADE',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'Kashmiri Laal Paneer',
              RecipeDescription:
                  'Kashmiri Laal Paneer (also called laal chaman) is a super delicious and quick paneer dish. As the name suggests, this curry is fiery red, and the appealing red color comes with the use of Kashmiri red chili powder.',
              buttonTexts: [
                'Paneer',
                'Mustard Oil',
                'Cloves',
                'Cardamoms',
                'Cumin Seeds',
                'Cinnamon Sticks',
                'Red Chilli Powder',
                'Cardamoms',
                'Bay Leaves',
                'Salt',
                'Ground Ginger',
                'Coriander Powder'
              ],
              itemCount: 12,
            ),
            recipeName: 'Laal Paneer',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'HOME MADE',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'Kashmir Dum Aloo',
              RecipeDescription:
                  'A traditional Kashmiri potato recipe where baby potatoes are boiled, fried, and then added to a spicy and rich yogurt-based gravy. This curry is subtly flavored with dry ginger powder which gives it a very distinct taste',
              buttonTexts: [
                'Baby Potatoes',
                'Yogurt',
                'Maida',
                'Oil',
                'Cloves',
                'Dry Red Chillies',
                'Black Cardamoms',
                'Black Peppercorn',
                'Kashmiri Red Chilli Powder',
                'Turmeric Powder',
                'Dry Ginger Powder',
                'Cumin Powder',
                'Fennel Powder',
                'Garam Masala',
              ],
              itemCount: 14,
            ),
            recipeName: 'Dum Aloo',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'HOME MADE',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'Kashmiri Saag',
              RecipeDescription:
                  'The quintessential winter recipe! All you need is 6 ingredients and 20 minutes to cook up this warm, dish on a chilly winter night. Cooked in mustard oil, kashmiri saag can be paired with makki ki roti.',
              buttonTexts: [
                'Whole Spinach',
                'Kashmiri Chillies',
                'Mustard Oil',
                'Cardamom',
                'Garlic',
                'Salt'
              ],
              itemCount: 6,
            ),
            recipeName: 'Kashmiri Saag',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'HOME MADE',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'Kashmiri Cxoch Wagan',
              RecipeDescription:
                  'This is usually served as a side dish in Kashmiri feasts and ceremonies for it\'s pop flavours. It\'s essentially golden fried aubergines laced in a thick, spicy and zingy gravy.',
              buttonTexts: [
                'Brinjals',
                'Onion',
                'Tomato',
                'Lime',
                'Mustard Oil',
                'Cinnamon Stick',
                'Cumin Seeds',
                'Cardamom',
                'Kashmiri Red Chilli',
                'Asafoetida',
                'Turmeric Powder',
                'Coriander Powder',
                'Salt',
                'Dry Ginger Powder',
                'Fennel Seeds',
                'Corainder Leaves'
              ],
              itemCount: 16,
            ),
            recipeName: 'Cxoch Wagan',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'HOME MADE',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'Kashmiri Muji Gaad',
              RecipeDescription:
                  'Muji gaad or machhli mooli as commonly known is a very special regional specialty from Kashmir. This delicacy from Kashmiri Pundit cuisine is also hugely popular during winters.',
              buttonTexts: [
                'Fish Fillets',
                'Radish',
                'Red Chilli Powder',
                'Asafoetida/Hing',
                'Oil',
                'Green Chillies',
                'Black Cardamom',
                'Cloves',
                'Turmeric Powder',
                'Dry Ginger Powder',
                'Veer',
                'Aniseed/Saunf',
                'Salt',
                'Tamarind Pulp'
              ],
              itemCount: 14,
            ),
            recipeName: 'Muji Gaad',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'HOME MADE',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'Kashmiri Dahi Bhaingan',
              RecipeDescription:
                  'Kashmiri Dahi Baingan Recipe is a lip smacking dish where the eggplant is diced and cooked in a simple yogurt gravy, which ideally is the Kashmiri style of cooking. ',
              buttonTexts: [
                'Brinjal',
                'Mustard Oil',
                'Curd',
                'Dry Ginger Powder',
                'Kashmiri Red Chilli Powder',
                'Turmeric Powder',
                'Fennel Seeds',
                'Cardamom',
                'Asafoetida/Hing',
                'Salt'
              ],
              itemCount: 10,
            ),
            recipeName: 'Dahi Bhaingan',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'HOME MADE',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'Kashmiri Mutton Yakni',
              RecipeDescription:
                  'A lip-smacking yoghurt based dish made with mutton cooked in a variety of spices and curd. The dish is very easy to prepare and can be made for lunch or dinner. Serve with plain rice, jeera rice or a simple pulao.',
              buttonTexts: [
                'Mutton Chopped',
                'Curd',
                'Cardamoms',
                'Cloves',
                'Cinnamom Sticks',
                'Dry Ginger Powder',
                'Mint Leaves',
                'Salt'
              ],
              itemCount: 8,
            ),
            recipeName: 'Mutton Yakni',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'HOME MADE',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'Kashmiri Monje Maaz',
              RecipeDescription:
                  'Kashmiri Al Yakhni is a popular recipe that is prepared in Kashmiri households for their everyday meals. Here, Al means “lauki” and yakhni means “yogurt based gravy”.',
              buttonTexts: [
                'Mutton',
                'Kadam',
                'Fennel Seeds',
                'Garlic',
                'Oil',
                'Salt',
                'Badi Elachi',
                'Choti Elachi',
                'Dalchini',
                'Zeera Powder',
                'Onion'
              ],
              itemCount: 11,
            ),
            recipeName: 'Monje Maaz',
          ),
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

////////////////////////////////////////DESSERTS/////////////////////////////////

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
          RecipeImage(
            name: Recipe(
              Category: 'DESSERTS',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'KESAR PHIRNI',
              RecipeDescription:
                  'This scrumptious traditional kashmiri dessert is perfect for any special occasions. ',
              buttonTexts: [
                'Milk',
                'Semolina',
                'Sugar',
                'Saffron',
                'Cardamom',
                'Nuts'
              ],
              itemCount: 6,
            ),
            recipeName: 'KESAR PHIRNI',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'DESSERTS',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'APPLE KHEER',
              RecipeDescription:
                  'Kashmiri apple kheer is super delicious and very famous recipe.',
              buttonTexts: [
                'Milk',
                'Grated kashmiri apples',
                'Sugar',
                'Saffron',
                'Cardamom',
                'Nuts',
                'Fresh cream'
              ],
              itemCount: 7,
            ),
            recipeName: 'APPLE KHEER',
          ),
           RecipeImage(
            name: Recipe(
              Category: 'DESSERTS',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'KASHMIRI LYDE',
              RecipeDescription:
                  'Kashmiri Lyde is a delectable, delicious and unique dessert which is an integral part of its Cuisine.',
              buttonTexts: [
                'Whole wheat flour',
                'Maida',
                'Sugar',
                'Water',
                'Cardamom powder',
                'Ghee',
                'Pinch Salt',
                'Cardamom pods'
              ],
              itemCount: 7,
            ),
            recipeName: 'KASHMIRI LYDE',
          ),
           RecipeImage(
            name: Recipe(
              Category: 'DESSERTS',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'KASHMIRI SEVAIYAN',
              RecipeDescription:
                  'Kashmiri sevaiyan , the sweet of Kashmiri cuisine is made with sevai, dry fruits and nuts and cooked in milk till thick! It\'s texture and taste are beautiful and mouthwatering!',
              buttonTexts: [
                'Sevaiyan',
                'Sugar',
                'Milk',
                'Cardamom powder',
                'Ghee',
                'Khoya',
                'Saffron',
                'Rose petals',
                'Dry fruits'
              ],
              itemCount: 9,
            ),
            recipeName: 'KASHMIRI SEVAIYAN',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'DESSERTS',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'KASHMIRI FALOODA',
              RecipeDescription:
                  'Very delicious and yummy beverage dessert that is flavored with Rose syrup.',
              buttonTexts: [
                'Basil seeds',
                'Sugar',
                'Milk',
                'Falooda sev',
                'Rose syrup',
                'Ice cream',
                'Dry fruits',
                'Rose petals',
              ],
              itemCount: 8,
            ),
            recipeName: 'KASHMIRI FALOODA',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'DESSERTS',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'KASHMIRI SHUFTA',
              RecipeDescription:
                  'Kashmiri Badam Paneer ka Shufta is traditional Desserts of Kashmir, prepared during weddings and special occasions.',
              buttonTexts: [
                'Water',
                'Sugar',
                'Dry fruits',
                'Ghee',
                'Lemon juice',
                'Saffron',
                'Cardamom powder',
                'Cheese'
              ],
              itemCount: 8,
            ),
            recipeName: 'KASHMIRI SHUFTA',
          ),
           RecipeImage(
            name: Recipe(
              Category: 'DESSERTS',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'KASHMIRI HALWA',
              RecipeDescription:
                  'A delicious, easy and quick halwa recipe for the festive season. ',
              buttonTexts: [
                'Oats',
                'Sugar',
                'Dry fruits',
                'Ghee',
                'Saffron',
                'Cardamom powder',
                'Milk'
              ],
              itemCount: 7,
            ),
            recipeName: 'KASHMIRI HALWA',
          ),
          RecipeImage(
            name: Recipe(
              Category: 'DESSERTS',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'BASRAKH',
              RecipeDescription:
                  'Basrakh, the crispy sugar coated ball of Maida cooked in Ghee.',
              buttonTexts: [
                'Maida',
                'Ghee/Butter',
                    'Sugar',],
              itemCount: 3,
            ),
            recipeName: 'BASRAKH',
          ),
           RecipeImage(
            name: Recipe(
              Category: 'DESSERTS',
              imagePath: 'assets/kehwa.jpg',
              RecipeName: 'TOSHA',
              RecipeDescription:
                  'Tosha is usually made as a symbol of respect on the occasion of joy or grief and has religious values and sentiments attached to it.',
              buttonTexts: [
                'Flour',
                'Ghee',
                'Poppy seeds',
                'Dry fruits'
                    ],
              itemCount: 3,
            ),
            recipeName: 'TOSHA',
          ),
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
