// // // // ignore_for_file: prefer_const_constructors, file_names, must_be_immutable

// // // import 'package:flutter/material.dart';
// // // import 'package:kaio/constants.dart';

// // // class RecipeImage extends StatelessWidget {
// // //   var name;
// // //   RecipeImage({required this.name});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Center(
// // //       child: GestureDetector(
// // //          onTap: () {
// // //         Navigator.push(
// // //             context, MaterialPageRoute(builder: (context) => name));
// // //       },
// // //         child: Card(
// // //           child: Container(
// // //             height: 180,
// // //             decoration: BoxDecoration(border: Border.all(color: Colors.black)),
// // //             child: Stack(
// // //               children: [
// // //                 Positioned(
// // //                   child: Center(
// // //                       child: Text(
// // //                     'Recipe',
// // //                     style: kHeading,
// // //                   )),
// // //                 ),
// // //                 Positioned(
// // //                   right: -40,
// // //                   top: 5,
// // //                   child: CircleAvatar(
// // //                     radius: 80,
// // //                     backgroundColor: Colors.amber.shade300,
// // //                     child: CircleAvatar(
// // //                       radius: 60,
// // //                       backgroundColor: Colors.orange,
// // //                     ),
// // //                   ),
// // //                 )
// // //               ],
// // //             ),
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // // ignore_for_file: prefer_const_constructors, file_names, must_be_immutable, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, avoid_print

// // import 'package:flutter/material.dart';
// // import 'package:kaio/constants.dart';

// // class RecipeImage extends StatefulWidget {
// //   var name;
// //   String recipeName;
// //   RecipeImage({required this.name, required this.recipeName});

// //   @override
// //   State<RecipeImage> createState() => _RecipeImageState();
// // }

// // class _RecipeImageState extends State<RecipeImage> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Center(
// //       child: GestureDetector(
// //         onTap: () {
// //           print('Hey');
// //           Navigator.push(
// //               context, MaterialPageRoute(builder: (context) => widget.name));//widget.name navigates to Recipe
// //         },
// //         child: Card(
// //           child: Container(
// //             height: 180,
// //             decoration: BoxDecoration(border: Border.all(color: Colors.black)),
// //             child: Stack(
// //               children: [
// //                 Positioned(
// //                   left: 60,
// //                   top: 60,
// //                   child: Center(
// //                       child: Text(
// //                     widget.recipeName,
// //                     style: kHeading,
// //                   )),
// //                 ),
// //                 Positioned(
// //                   right: -40,
// //                   top: 5,
// //                   child: CircleAvatar(
// //                     radius: 80,
// //                     backgroundColor: Colors.amber.shade300,
// //                     child: CircleAvatar(
// //                       radius: 60,
// //                       backgroundColor: const Color.fromRGBO(255, 152, 0, 1),
// //                     ),
// //                   ),
// //                 )
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }



// // ignore_for_file: prefer_const_constructors, file_names, must_be_immutable, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, avoid_print

// import 'package:flutter/material.dart';
// import 'package:kaio/constants.dart';
// import 'package:kaio/main.dart';

// class RecipeImage extends StatefulWidget {
//   var name;
//   String recipeName, assetName;
//   RecipeImage({required this.name, required this.recipeName, required this.assetName});
//   @override
//   State<RecipeImage> createState() => _RecipeImageState();
// }

// class _RecipeImageState extends State<RecipeImage> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 8.0),
//       child: Center(
//         child: GestureDetector(
//           onTap: () {
//             print('Hey');
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) =>
//                         widget.name)); //widget.name navigates to Recipe
//           },
//           child: Card(
//             child: Container(
//               width: devW*0.9,
//               height: devH*0.20,
//               decoration: BoxDecoration(
//                 border: Border.all(color: Color(0xff85586F),width: 3),
//                 borderRadius: BorderRadius.circular(20)),
//               child: Stack(
//                 children: [
//                   Positioned(
//                     right: 50,
//                     top: 80,
//                     child: Text(
//                       widget.recipeName,
//                       style: kHeading,
//                     ),
//                   ),
//                   Positioned(
//                     left: 6,
//                     top: 8,
//                     child: Center(
//                       child: CircleAvatar(
//                         radius: devW*0.19,
//                         backgroundImage: AssetImage(widget.assetName),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }





// ignore_for_file: prefer_const_constructors, file_names, must_be_immutable, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:kaio/constants.dart';
import 'package:kaio/main.dart';

class RecipeImage extends StatefulWidget {
  var name;
  String recipeName, assetName;
  RecipeImage({required this.name, required this.recipeName, required this.assetName});
  @override
  State<RecipeImage> createState() => _RecipeImageState();
}

class _RecipeImageState extends State<RecipeImage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Center(
        child: GestureDetector(
          onTap: () {
            print('Hey');
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        widget.name)); //widget.name navigates to Recipe
          },
          child: Card(
            child: Container(
              width: devW*0.9,
              height: devH*0.20,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff85586F),width: 3),
                borderRadius: BorderRadius.circular(20)),
              child: Stack(
                children: [
                  Positioned(
                    left: 220,
                    top: 80,
                    child: Text(
                      widget.recipeName,
                      style:kSelText,
                    ),
                  ),
                  Positioned(
                    left: 6,
                    top: 8,
                    child: Center(
                      child: CircleAvatar(
                        radius: devW*0.19,
                        backgroundImage: AssetImage(widget.assetName),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}