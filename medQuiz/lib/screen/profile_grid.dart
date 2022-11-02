// import 'package:flutter/material.dart';
// import 'package:medquiz/utility/app_colors.dart';
// import 'package:medquiz/widget/container_grid.dart';

// class ProfileGrid extends StatefulWidget {
//   const ProfileGrid({Key? key}) : super(key: key);

//   @override
//   State<ProfileGrid> createState() => _ProfileGridState();
// }

// class _ProfileGridState extends State<ProfileGrid> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Stack(
//                 alignment: Alignment.center,
//                 clipBehavior: Clip.none,
//                 children: [
//                   Container(
//                       height: 260,
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                           color: AppColor.primaryColor,
//                           borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(20),
//                               topRight: Radius.circular(20))),
//                       child: Column(
//                         children: [
//                           Row(
//                             children: [
//                               Spacer(),
//                               Image.network(
//                                 'https://simplybook.it/uploads/medquizacademy/image_files/preview/2ef797d87b7b4d488576946311d2256e.png',
//                                 color: Colors.white,
//                                 height: 140,
//                                 // width: 300,
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.only(left: 60, right: 10),
//                                 child: Icon(
//                                   Icons.home,
//                                   size: 30,
//                                   color: Colors.white,
//                                 ),
//                               )
//                             ],
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 10),
//                             child: Row(
//                               children: [
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       'Hello',
//                                       style: TextStyle(
//                                           color: AppColor.textcolor,
//                                           fontSize: 15,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                     Text(
//                                       'Samantha Smith',
//                                       style: TextStyle(
//                                           color: AppColor.textcolor,
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 20),
//                                     ),
//                                   ],
//                                 ),
//                                 Spacer(),
//                                 Container(
//                                   height: 60,
//                                   width: 70,
//                                   decoration: BoxDecoration(
//                                     shape: BoxShape.circle,
//                                     image: DecorationImage(
//                                         image: NetworkImage(
//                                             'https://th.bing.com/th/id/OIP.ZTnds1AfVNk7PdUyhJzJNwHaHz?pid=ImgDet&rs=1')),
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           )
//                         ],
//                       )),
//                   Positioned(
//                     top: 210,
//                     child: Card(
//                       elevation: 3,
//                       child: Container(
//                         height: 90,
//                         width: 330,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               Image(
//                                 image: NetworkImage(
//                                     'https://thumbs.dreamstime.com/b/medical-equipment-doctor-s-desk-medical-equipment-doctor-s-desk-stethoscope-ampules-syringe-white-background-111880935.jpg'),
//                                 height: 140,
//                                 width: 110,
//                               ),
//                               SizedBox(
//                                 width: 5,
//                               ),
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     "What's next",
//                                     style: TextStyle(
//                                         color: Colors.black26,
//                                         fontSize: 14,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   SizedBox(
//                                     height: 7,
//                                   ),
//                                   Text(
//                                     'Medicine weekly test',
//                                     style: TextStyle(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   SizedBox(
//                                     height: 5,
//                                   ),
//                                   Text(
//                                     'In 20:48 min',
//                                     style: TextStyle(
//                                         color: AppColor.fontcolor,
//                                         fontSize: 15,
//                                         fontWeight: FontWeight.bold),
//                                   )
//                                 ],
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   )
//                 ]),
//             SizedBox(
//               height: 20,
//             ),
//             // ContainerWidget(text: 'Syllabus')
//             GridView.count(
//               physics: ScrollPhysics(),
//               childAspectRatio: 2.2,
//               crossAxisCount: 2,
//               crossAxisSpacing: 1.15,
//               shrinkWrap: true,
//               children: List.generate(
//                 14,
//                 (index) {
//                   return Padding(
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
//                     child: ContainerGridWidget(text: 'Syllabus'),
//                   );
//                 },
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
