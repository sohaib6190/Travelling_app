// // import 'package:flutter/cupertino.dart';
// //
// // import 'package:flutter/material.dart';
// // import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// // import 'package:my_proj/widgets/CustomButotn.dart';
// //
// // class ListCards extends StatelessWidget {
// //   final List<Image> images;
// //
// //   ListCards({required this.images});
// //
// //
// //   var items = [
// //     {
// //       'name': "Hunza",
// //       'pname' : 'Pakistan',
// //      // 'image' :'assets/images/hunza.jpg',
// //
// //
// //     },
// //     {
// //       'name': "Attabad",
// //       'pname' : 'Kashmir',
// //       //'image' :'assets/images/Attabad.jpg',
// //
// //
// //     },
// //
// //     {
// //       'name': "Skardu",
// //       'pname' : 'Swat',
// //       //'image' :'assets/images/Skardu.jpg',
// //
// //
// //     },
// //
// //     {
// //       'name': "Hunza",
// //       'pname' : 'Pakistan',
// //       //'image' :'assets/images/hunza.jpg',
// //
// //
// //     },
// //     {
// //       'name': "Attabad",
// //       'pname' : 'Kashmir',
// //       //'image' :'assets/images/Attabad.jpg',
// //
// //
// //     },
// //
// //     {
// //       'name': "Skardu",
// //       'pname' : 'Swat',
// //       //'image' :'assets/images/Skardu.jpg',
// //
// //
// //     },
// //
// //     {
// //       'name': "Hunza",
// //       'pname' : 'Pakistan',
// //       //'image' :'assets/images/hunza.jpg',
// //
// //
// //     },
// //     {
// //       'name': "Attabad",
// //       'pname' : 'Kashmir',
// //       //'image' :'assets/images/Attabad.jpg',
// //
// //
// //     },
// //
// //     {
// //       'name': "Skardu",
// //       'pname' : 'Swat',
// //       //'image' :'assets/images/Skardu.jpg',
// //
// //
// //     },
// //
// //   ];
// //   @override
// //   Widget build(BuildContext context) {
// //
// // return Container(
// //   height: 260,
// //   child: ListView(
// //     shrinkWrap: true,
// //     scrollDirection: Axis.horizontal,
// //     children: items.map((value) {
// //
// //       return  Padding(
// //       padding: const EdgeInsets.only(left: 10),
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           Row(
// //             children: [
// //               Padding(
// //                 padding: const EdgeInsets.all(8.0),
// //                 child: Container(
// //                     width: 250,
// //                     height:200,
// //                     decoration: BoxDecoration(
// //                       image: DecorationImage(
// //                         image: AssetImage(images[index].image,),
// //                         fit: BoxFit.fill,
// //                       ),
// //                       borderRadius: BorderRadius.circular(10),
// //
// //                     ),
// //
// //
// //                 ),
// //               ),
// //
// //
// //
// //             ],
// //           ),
// //           Padding(
// //             padding: const EdgeInsets.only(left: 12),
// //             child: Row(
// //               children: [
// //
// //                 FaIcon(FontAwesomeIcons.star,color: Color(0xff9B9B9B),size: 15,),
// //                 FaIcon(FontAwesomeIcons.star,color: Color(0xff9B9B9B),size: 15,),
// //                 FaIcon(FontAwesomeIcons.star,color: Color(0xff9B9B9B),size: 15,),
// //                 FaIcon(FontAwesomeIcons.star,color: Color(0xff9B9B9B),size: 15,),
// //                 FaIcon(FontAwesomeIcons.star,color: Color(0xff9B9B9B),size: 15,),
// //
// //
// //               ],
// //             ),
// //
// //
// //
// //           ),
// //       SizedBox(
// //         height: 2,
// //       ),
// //
// //
// //           Padding(
// //             padding: const EdgeInsets.only(left: 12),
// //             child: Text(value['pname'].toString(),style: TextStyle(fontSize: 15),),
// //           ),
// //
// //
// //
// //
// //         ],
// //       ),
// //
// //     )).toList(),
// //   ),
// // );
// //
// //   }
// // }
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:my_proj/widgets/CustomButotn.dart';
//
// class ListCards extends StatelessWidget {
//   final List<Image> images;
//
//   ListCards({required this.images});
//
//   var items = [
//     {'name': "Hunza", 'pname': 'Pakistan'},
//     {'name': "Attabad", 'pname': 'Kashmir'},
//     {'name': "Skardu", 'pname': 'Swat'},
//     {'name': "Hunza", 'pname': 'Pakistan'},
//     {'name': "Attabad", 'pname': 'Kashmir'},
//     {'name': "Skardu", 'pname': 'Swat'},
//     {'name': "Hunza", 'pname': 'Pakistan'},
//     {'name': "Attabad", 'pname': 'Kashmir'},
//     {'name': "Skardu", 'pname': 'Swat'},
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 260,
//       child: ListView(
//         shrinkWrap: true,
//         scrollDirection: Axis.horizontal,
//         children: items.map((value) {
//           int index = items.indexOf(value);
//           return Padding(
//             padding: const EdgeInsets.only(left: 10),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         width: 250,
//                         height: 200,
//                         decoration: BoxDecoration(
//                           image: DecorationImage(
//                             image: images[index].image,
//                             fit: BoxFit.fill,
//                           ),
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 12),
//                   child: Row(
//                     children: [
//                       FaIcon(
//                         FontAwesomeIcons.star,
//                         color: Color(0xff9B9B9B),
//                         size: 15,
//                       ),
//                       FaIcon(
//                         FontAwesomeIcons.star,
//                         color: Color(0xff9B9B9B),
//                         size: 15,
//                       ),
//                       FaIcon(
//                         FontAwesomeIcons.star,
//                         color: Color(0xff9B9B9B),
//                         size: 15,
//                       ),
//                       FaIcon(
//                         FontAwesomeIcons.star,
//                         color: Color(0xff9B9B9B),
//                         size: 15,
//                       ),
//                       FaIcon(
//                         FontAwesomeIcons.star,
//                         color: Color(0xff9B9B9B),
//                         size: 15,
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 2,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 12),
//                   child: Text(
//                     value['pname'].toString(),
//                     style: TextStyle(fontSize: 15),
//                   ),
//                 ),
//               ],
//             ),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListCards extends StatelessWidget {
  final List<String> imagePaths;

  ListCards({required this.imagePaths});

  var items = [
    {'name': "Hunza", 'pname': 'Pakistan'},
    {'name': "Attabad", 'pname': 'Kashmir'},
    {'name': "Skardu", 'pname': 'Swat'},
    {'name': "Hunza", 'pname': 'Pakistan'},

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: items.map((value) {
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(imagePaths[items.indexOf(value)]),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.star,
                        color: Color(0xff9B9B9B),
                        size: 15,
                      ),
                      FaIcon(
                        FontAwesomeIcons.star,
                        color: Color(0xff9B9B9B),
                        size: 15,
                      ),
                      FaIcon(
                        FontAwesomeIcons.star,
                        color: Color(0xff9B9B9B),
                        size: 15,
                      ),
                      FaIcon(
                        FontAwesomeIcons.star,
                        color: Color(0xff9B9B9B),
                        size: 15,
                      ),
                      FaIcon(
                        FontAwesomeIcons.star,
                        color: Color(0xff9B9B9B),
                        size: 15,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    value['pname'].toString(),
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
