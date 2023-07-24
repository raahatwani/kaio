// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, empty_constructor_bodies, must_be_immutable, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_typing_uninitialized_variables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:kaio/Literature/BookTemplate.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/main.dart';
import '../Literature/Book.dart';
import '../widgets/BookShape1.dart';

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
            Text('My Books', style: kHeading,textScaleFactor: devW*0.006,),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    BookShape1(name: Book(), imagepath: 'assets/argami.jpg'),
                    BookShape1(name: Book(), imagepath: 'assets/rasol.jpg'),
                    BookShape1(name: Book(), imagepath: 'assets/rahman.jpg'),
                    BookShape1(name: Book(), imagepath: 'assets/kral.jpg'),
                    BookShape1(name: Book(), imagepath: 'assets/museeki.jpg'),
                  ],
                )),
                SizedBox(height: devH*0.04,),
            Text(
              'Book Shelf',
              style: kHeading,textScaleFactor: devW*0.006
            ),
            DefaultTabController(
              length: 4,
              child: Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(25.0)),
                      child: TabBar(
                        indicator: BoxDecoration(
                            color: Color(0xff85586F),
                            borderRadius: BorderRadius.circular(25.0)),
                        tabs: [
                          Tab(text: 'Poetry'),
                          Tab(text: 'History'),
                          Tab(text: 'Prose'),
                          Tab(text: 'New'),
                        ],
                        labelColor: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Poetry(),
                          History(),
                          Prose(),
                          New(),
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
       BookShape1(name: BookTemplate
       (
          finalPath: 'assets/museeki.jpg', 
          bookName: 'Museeki', 
          author: 'Museeki Kashmiri', 
          link: 'https://drive.google.com/file/d/1EaESB3vjDe6vHT5k9aw5WBvFn0nHRuce/view?usp=sharing', 
          descriptionText: 'descriptionText'), imagepath: 'assets/museeki.jpg'),
      BookShape1(
            name: BookTemplate(
                finalPath: 'assets/rasol.jpg',
                bookName: 'Kulliyat-e-Rasol-Mir',
                author: 'Rasol Mir',
                link:
                    'https://drive.google.com/file/d/1EaESB3vjDe6vHT5k9aw5WBvFn0nHRuce/view?usp=sharing',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/rasol.jpg'),
        BookShape1(
            name: BookTemplate(
                finalPath: 'assets/shamas.jpg',
                bookName: 'Kuliyaat-e-Shamas-Fakir',
                author: 'Shamas Fakir',
                link:
                    'https://drive.google.com/file/d/1oI87TnRSI3nF-Yj6uk0fA_0l-S2if0xT/view?usp=sharing',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/shamas.jpg'),
        BookShape1(
            name: BookTemplate(
                finalPath: 'assets/mehjoor.jpg',
                bookName: 'Kulliyaat-e-Mahjoor',
                author: 'Mahjoor',
                link:
                    'https://drive.google.com/file/d/1pZJzBITrxKISL9tRUOuhSqIbH0c4igmJ/view?usp=sharing',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/mehjoor.jpg'),
        BookShape1(
            name: BookTemplate(
                finalPath: 'assets/kral.jpg',
                bookName: 'Kulliayt-e-Soch-Kral',
                author: 'Soch Kral',
                link:
                    'https://drive.google.com/drive/u/3/folders/1K8kVk1YNyN3fSftQAk6ydou9LvIWmI2R',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/kral.jpg'),
        BookShape1(
            name: BookTemplate(
                finalPath: 'assets/argami.jpg',
                bookName: 'Argami',
                author: 'Lali Sob Argami',
                link:
                    'https://drive.google.com/drive/u/3/folders/1K8kVk1YNyN3fSftQAk6ydou9LvIWmI2R',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/argami.jpg'),
        BookShape1(
            name: BookTemplate(
                finalPath: 'assets/rahim.jpeg',
                bookName: 'Kulliyat-e-Rahim-Sopori',
                author: 'Rahim Sopori',
                link:
                    'https://drive.google.com/drive/u/3/folders/1K8kVk1YNyN3fSftQAk6ydou9LvIWmI2R',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/rahim.jpeg'),
        BookShape1(
            name: BookTemplate(
                finalPath: 'assets/fakir.jpeg',
                bookName: 'Shamas Fakir',
                author: 'Shamas Fakir',
                link: 'https://drive.google.com/drive/u/3/folders/1K8kVk1YNyN3fSftQAk6ydou9LvIWmI2R',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/fakir.jpeg'),
        BookShape1(
            name: BookTemplate(
                finalPath: 'assets/wali.jpeg',
                bookName: 'Gash Kati Aaw',
                author: 'Wali Bhat',
                link: 'https://drive.google.com/drive/u/3/folders/1K8kVk1YNyN3fSftQAk6ydou9LvIWmI2R',
                descriptionText: 'descriptionText'),
            imagepath: 'assets/wali.jpeg'),
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
        BookShape1(name: BookTemplate(
          author: 'Alastair Lamb', 
          bookName: 'Kashmir- A Disputed Legacy', 
          descriptionText: 'assets/KashmirAlas.jpeg', 
          finalPath: '', 
          link: 'https://drive.google.com/drive/u/3/folders/1AKfWf3bGO4YTWSP_eDTLMVYYaDp8fmd0',), 
        imagepath: 'assets/KashmirAlas.jpeg'),
        BookShape1(name: BookTemplate(
          author: 'Mridu Rai', 
          bookName: 'Hindu Rulers, Muslim Subjects', 
          descriptionText: '', 
          finalPath: 'assets/KashmirRulers.jpeg', 
          link: 'https://drive.google.com/drive/u/3/folders/1AKfWf3bGO4YTWSP_eDTLMVYYaDp8fmd0',), 
        imagepath: 'assets/KashmirRulers.jpeg'),
        BookShape1(
            name: BookTemplate(
              author: 'Prem Nath Bazaz',
              bookName: 'The History Of Struggle for Freedom in Kashmir',
              descriptionText: '',
              finalPath: 'assets/Struggle.jpeg',
              link: 'https://drive.google.com/drive/u/3/folders/1AKfWf3bGO4YTWSP_eDTLMVYYaDp8fmd0',
            ),
            imagepath: 'assets/Struggle.jpeg'),
        BookShape1(
            name: BookTemplate(
              author: 'S.R Bakshi',
              bookName: 'Kashmir: History and People',
              descriptionText: '',
              finalPath: 'assets/KashmirHistory.jpeg',
              link: 'https://drive.google.com/drive/u/3/folders/1AKfWf3bGO4YTWSP_eDTLMVYYaDp8fmd0',
            ),
            imagepath: 'assets/KashmirHistory.jpeg'),
        BookShape1(name: BookTemplate(
          author: 'Rajataranggini(Translation)', 
          bookName: 'Jogesh Chunder Dutt', 
          descriptionText: '', 
          finalPath: 'assets/Rajantarangni.jpeg', 
          link: 'https://drive.google.com/drive/u/3/folders/1AKfWf3bGO4YTWSP_eDTLMVYYaDp8fmd0',), 
        imagepath: 'assets/Rajantarangni.jpeg'),
        BookShape1(
            name: BookTemplate(
              author: 'Walter R. Lawrence',
              bookName: 'The Valley Of Kashmir',
              descriptionText: '',
              finalPath: 'assets/ValleyOfKashmir.jpeg',
              link: 'https://drive.google.com/drive/u/3/folders/1AKfWf3bGO4YTWSP_eDTLMVYYaDp8fmd0',
            ),
            imagepath: 'assets/ValleyOfKashmir.jpeg'),
      ],
    );
  }
}

class Prose extends StatelessWidget {
  const Prose({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        BookShape1(
            name: BookTemplate(
                finalPath: 'assets/RaaiTraai.jpeg',
                bookName: 'RAAI TRAAI',
                author: 'Abdul Ahad Hajini',
                link:
                    'https://drive.google.com/file/d/1ajbDTWWI5JG_aev3nW4OxuV_P85bgz4t/view?usp=drivesdk',
                descriptionText:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean id viverra libero. Donec ut diam ante. Mauris blandit diam id finibus venenatis. Suspendisse non rhoncus arcu. Fusce rhoncus vehicula scelerisque. Nam suscipit dapibus ante, sed volutpat mauris mollis sed. Integer dignissim volutpat tristique. Vivamus consequat justo quis nulla varius, vel posuere ante porta. Aenean non molestie metus. Mauris imperdiet, leo sed pulvinar sodales, lectus massa interdum lacus, sit amet dictum ante lectus nec dui. Sed in libero porttitor, posuere ligula et, elementum justo.'),
            imagepath: 'assets/RaaiTraai.jpeg'),
        BookShape1(
            name: BookTemplate(
                finalPath: 'assets/TyothPazr.jpeg',
                bookName: 'TIYUTH PAZAR',
                author: 'Abdul Ahad Hajini',
                link:
                    'https://drive.google.com/file/d/1hewjHCXvfQXcyMHUiqo_IF0ixU2gLwDd/view?usp=drivesdk',
                descriptionText:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean id viverra libero. Donec ut diam ante. Mauris blandit diam id finibus venenatis. Suspendisse non rhoncus arcu. Fusce rhoncus vehicula scelerisque. Nam suscipit dapibus ante, sed volutpat mauris mollis sed. Integer dignissim volutpat tristique. Vivamus consequat justo quis nulla varius, vel posuere ante porta. Aenean non molestie metus. Mauris imperdiet, leo sed pulvinar sodales, lectus massa interdum lacus, sit amet dictum ante lectus nec dui. Sed in libero porttitor, posuere ligula et, elementum justo.'),
            imagepath: 'assets/TyothPazr.jpeg'
            ),
        BookShape1(
            name: BookTemplate(
                finalPath: 'assets/Akhyaadakhqayamat.jpeg',
                bookName: 'AKH YAAD AKH QAYAMAT',
                author: 'Abdul Ahad Hajini',
                link:
                    'https://drive.google.com/file/d/1B0UfQpedtLBr-QDXKzBNUpMNevEjtcy4/view?usp=drivesdk',
                descriptionText:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean id viverra libero. Donec ut diam ante. Mauris blandit diam id finibus venenatis. Suspendisse non rhoncus arcu. Fusce rhoncus vehicula scelerisque. Nam suscipit dapibus ante, sed volutpat mauris mollis sed. Integer dignissim volutpat tristique. Vivamus consequat justo quis nulla varius, vel posuere ante porta. Aenean non molestie metus. Mauris imperdiet, leo sed pulvinar sodales, lectus massa interdum lacus, sit amet dictum ante lectus nec dui. Sed in libero porttitor, posuere ligula et, elementum justo.'),
            imagepath: 'assets/Akhyaadakhqayamat.jpeg'
            ),
        BookShape1(
            name: BookTemplate(
                finalPath: 'assets/Hawas.jpeg',
                bookName: 'HAWAS',
                author: 'Abdul Ahad Hajini',
                link:
                    'https://drive.google.com/file/d/15zBPvr9eZlCY5GQOviXhx78GRRbyAQzA/view?usp=drivesdk',
                descriptionText:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean id viverra libero. Donec ut diam ante. Mauris blandit diam id finibus venenatis. Suspendisse non rhoncus arcu. Fusce rhoncus vehicula scelerisque. Nam suscipit dapibus ante, sed volutpat mauris mollis sed. Integer dignissim volutpat tristique. Vivamus consequat justo quis nulla varius, vel posuere ante porta. Aenean non molestie metus. Mauris imperdiet, leo sed pulvinar sodales, lectus massa interdum lacus, sit amet dictum ante lectus nec dui. Sed in libero porttitor, posuere ligula et, elementum justo.'),
            imagepath: 'assets/Hawas.jpeg'
            ),
        BookShape1(
            name: BookTemplate(
                finalPath: 'assets/Kehwat.jpeg',
                bookName: 'KEHWAT',
                author: 'Rahman Rahi',
                link:
                    'https://drive.google.com/file/d/1GWL9f-xYvtYrupI7C62qV-UyRsox4wEX/view?usp=drivesdk',
                descriptionText:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean id viverra libero. Donec ut diam ante. Mauris blandit diam id finibus venenatis. Suspendisse non rhoncus arcu. Fusce rhoncus vehicula scelerisque. Nam suscipit dapibus ante, sed volutpat mauris mollis sed. Integer dignissim volutpat tristique. Vivamus consequat justo quis nulla varius, vel posuere ante porta. Aenean non molestie metus. Mauris imperdiet, leo sed pulvinar sodales, lectus massa interdum lacus, sit amet dictum ante lectus nec dui. Sed in libero porttitor, posuere ligula et, elementum justo.'),
            imagepath: 'assets/Kehwat.jpeg'
            ),
        BookShape1(
            name: BookTemplate(
                finalPath: 'assets/DiltiDewar.jpeg',
                bookName: 'DIL TI DEWAR',
                author: 'Lateef Aashiq',
                link:
                    'https://drive.google.com/file/d/1Jnub_OBe36yZCV7UxO1y6OgWHqmsIkh3/view?usp=drivesdk',
                descriptionText:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean id viverra libero. Donec ut diam ante. Mauris blandit diam id finibus venenatis. Suspendisse non rhoncus arcu. Fusce rhoncus vehicula scelerisque. Nam suscipit dapibus ante, sed volutpat mauris mollis sed. Integer dignissim volutpat tristique. Vivamus consequat justo quis nulla varius, vel posuere ante porta. Aenean non molestie metus. Mauris imperdiet, leo sed pulvinar sodales, lectus massa interdum lacus, sit amet dictum ante lectus nec dui. Sed in libero porttitor, posuere ligula et, elementum justo.'),
            imagepath: 'assets/DiltiDewar.jpeg'
            ),
        BookShape1(
            name: BookTemplate(
                finalPath: 'assets/Yetinooresarearzwasamaa.jpeg',
                bookName: 'YATI NOOR SER ARAZ O SAMA',
                author: 'Abdul Ahad Hajini',
                link:
                    'https://drive.google.com/file/d/1Zhi9paW8rq16fZo4ky8jfv5pz5LD8SEg/view?usp=drivesdk',
                descriptionText:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean id viverra libero. Donec ut diam ante. Mauris blandit diam id finibus venenatis. Suspendisse non rhoncus arcu. Fusce rhoncus vehicula scelerisque. Nam suscipit dapibus ante, sed volutpat mauris mollis sed. Integer dignissim volutpat tristique. Vivamus consequat justo quis nulla varius, vel posuere ante porta. Aenean non molestie metus. Mauris imperdiet, leo sed pulvinar sodales, lectus massa interdum lacus, sit amet dictum ante lectus nec dui. Sed in libero porttitor, posuere ligula et, elementum justo.'),
            imagepath: 'assets/Yetinooresarearzwasamaa.jpeg'
            ),
      ],
    );
  }
}

class New extends StatelessWidget {
  const New({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        BookShape1(
            name: BookTemplate(
                finalPath: 'assets/thecollaborator.jpeg',
                bookName: 'THE COLLABORATOR',
                author: 'Mirza Waheed',
                link:
                    'https://drive.google.com/file/d/1HiGfnZE7ruFbMx653-FdsO5JCFsQJRw7/view?usp=drivesdk',
                descriptionText:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean id viverra libero. Donec ut diam ante. Mauris blandit diam id finibus venenatis. Suspendisse non rhoncus arcu. Fusce rhoncus vehicula scelerisque. Nam suscipit dapibus ante, sed volutpat mauris mollis sed. Integer dignissim volutpat tristique. Vivamus consequat justo quis nulla varius, vel posuere ante porta. Aenean non molestie metus. Mauris imperdiet, leo sed pulvinar sodales, lectus massa interdum lacus, sit amet dictum ante lectus nec dui. Sed in libero porttitor, posuere ligula et, elementum justo.'),
            imagepath: 'assets/thecollaborator.jpeg'
            ),
        BookShape1(
            name: BookTemplate(
                finalPath: 'assets/curfewednight.jpeg',
                bookName: 'CURFEWED NIGHT',
                author: 'Basharat Peer',
                link:
                    'https://drive.google.com/file/d/1WrH65LWqxfbvL2-aqQRM1pR09XjJHpQR/view?usp=drivesdk',
                descriptionText:
                   'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean id viverra libero. Donec ut diam ante. Mauris blandit diam id finibus venenatis. Suspendisse non rhoncus arcu. Fusce rhoncus vehicula scelerisque. Nam suscipit dapibus ante, sed volutpat mauris mollis sed. Integer dignissim volutpat tristique. Vivamus consequat justo quis nulla varius, vel posuere ante porta. Aenean non molestie metus. Mauris imperdiet, leo sed pulvinar sodales, lectus massa interdum lacus, sit amet dictum ante lectus nec dui. Sed in libero porttitor, posuere ligula et, elementum justo.' ),
            imagepath: 'assets/curfewednight.jpeg'
            ),
         BookShape1(
            name: BookTemplate(
                finalPath: 'assets/ourmoonhasbloodclots.jpeg',
                bookName: 'OUR MOON HAS BLOOD CLOTS',
                author: 'Rahul Pandita',
                link:
                    'https://drive.google.com/file/d/1HiGfnZE7ruFbMx653-FdsO5JCFsQJRw7/view?usp=drivesdk',
                descriptionText:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean id viverra libero. Donec ut diam ante. Mauris blandit diam id finibus venenatis. Suspendisse non rhoncus arcu. Fusce rhoncus vehicula scelerisque. Nam suscipit dapibus ante, sed volutpat mauris mollis sed. Integer dignissim volutpat tristique. Vivamus consequat justo quis nulla varius, vel posuere ante porta. Aenean non molestie metus. Mauris imperdiet, leo sed pulvinar sodales, lectus massa interdum lacus, sit amet dictum ante lectus nec dui. Sed in libero porttitor, posuere ligula et, elementum justo.'),
            imagepath: 'assets/ourmoonhasbloodclots.jpeg'
            ),
        BookShape1(
            name: BookTemplate(
                finalPath: 'assets/kashmiradisputedlegacy.jpeg',
                bookName: 'KASHMIR A DISPUTED LEGACY',
                author: 'Alstair Lamb',
                link:
                    'https://drive.google.com/file/d/1CNo2fpz57D5MliyuojW_ShssQSkDmS6m/view?usp=drivesdk',
                descriptionText:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean id viverra libero. Donec ut diam ante. Mauris blandit diam id finibus venenatis. Suspendisse non rhoncus arcu. Fusce rhoncus vehicula scelerisque. Nam suscipit dapibus ante, sed volutpat mauris mollis sed. Integer dignissim volutpat tristique. Vivamus consequat justo quis nulla varius, vel posuere ante porta. Aenean non molestie metus. Mauris imperdiet, leo sed pulvinar sodales, lectus massa interdum lacus, sit amet dictum ante lectus nec dui. Sed in libero porttitor, posuere ligula et, elementum justo.'),
            imagepath: 'assets/kashmiradisputedlegacy.jpeg'
            ),
      ],
    );
  }
}
