import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';



import '../main.dart';
import 'cook.dart';



class Recipe extends StatelessWidget {
  const Recipe({super.key});

  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.grey.shade400,
        appBar: AppBar(
           leading: IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back_sharp),color: Color(0xff85586F),
            
          ),
          title: Text('BEVERAGES', style: kHeading),
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
                        backgroundImage: AssetImage('assets/kehwa.jpg'),
                        radius: devW * 0.3,
                      ),
                      Text(
                        'KASHMIRI KEHWA',
                        style: kHeading,
                      ),
                      Text(
                        'Kashmiri Kehwa is an authentic kashmiri beverage.',
                        style: kSelText,
                      ), SizedBox(height: devH*0.04,),
                      Text(
                        'Ingredients:',
                        style: kHeading,
                      )
                     


// big buttons

                      // Container(
                      //   color: Colors.amber,
                      //   width: devW,height: devH*0.35,
                      //   child: GridView.builder(
                      //     itemCount: 8,
                      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      //       crossAxisCount: 2,
                      //     ),
                      //     itemBuilder: (context, index) {
                      //       List buttonTexts = [
                      //         'Water',
                      //         'Cardamom',
                      //         'Cinnamon',
                      //         'Saffron',
                      //         'Sugar',
                      //         'Kashmiri green tea leaves',
                      //         'Chopped Almonds',
                      //         '8'
                      //       ];
                      
                      //       return Padding(
                      //         padding: EdgeInsets.symmetric(
                      //             horizontal: 10, vertical: 10),
                      //         child: OutlinedButton(
                      //           child: Text(buttonTexts[index]),
                      //           onPressed: () {},
                      //         ),
                      //       );
                      //     },
                      //   ),
                      // ),


// small buttons

                      ,Container(
  // color: Colors.amber,
  width: devW,
  height: devH * 0.3,
  child: GridView.builder(
    itemCount: 7,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      childAspectRatio: 2, 
    ),
    itemBuilder: (context, index) {
      List buttonTexts = [
        'Water',
        'Cardamom',
        'Cinnamon',
        'Saffron',
        'Sugar',
        'Kashmiri tea leaves',
        'Chopped Almonds',
        
        
      ];

      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: SizedBox(
          width: devW*0.01,
          height: devH*0.03,
          child: OutlinedButton(
            child: Text(buttonTexts[index],style: kSelText,),
            onPressed: () {},
          ),
        ),
      );
    },
  ),
)



                      
// row col 
                    // Column(children: [
                    //   Row(
                    //     children: [
                    //       Ingredients(),
                          
                          
                    //     ],
                    //   ),
                    //   Row(
                    //     children: [
                    //       Ingredients(),
                          
                    //     ],
                    //   ),
                    // ],),
                      ,SizedBox(height: devH*0.02,)
                      ,SizedBox(
                        height: devH * 0.07,
                        width: devW,
                        child: FilledButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (_){return Cook();}));
                            },
                            style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Color(0xff85586F)), // Change the color here
    ),
                            child: Text("Let's cook this recipie",),),
                      )
                    ]))));
  }
}
