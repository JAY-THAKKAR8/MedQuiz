// import 'package:flutter/material.dart';
// import 'package:medquiz/screen/profile_grid.dart';
// import 'package:medquiz/utility/app_colors.dart';
// import 'package:medquiz/widget/button_widget.dart';
// import 'package:medquiz/widget/container_card_widgets.dart';

// class Shop extends StatefulWidget {
//   const Shop({Key? key}) : super(key: key);
//   @override
//   State<Shop> createState() => _ShopState();
// }

// class _ShopState extends State<Shop> {
//   bool chekedboxvalue = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Shop',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         bottom: PreferredSize(
//             preferredSize: Size.fromHeight(50.0),
//             child: Container(
//               height: 50,
//               width: double.infinity,
//               color: AppColor.primaryColor,
//               child: Padding(
//                 padding:
//                     const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
//                 child: Text('Packeges',
//                     style: TextStyle(
//                         color: AppColor.textcolor,
//                         fontSize: 17,
//                         fontWeight: FontWeight.bold)),
//               ),
//             )),
//         centerTitle: true,
//         elevation: 0,
//         backgroundColor: AppColor.primaryColor,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: 8),
//             // ListView.builder(
//             //   itemCount: 4,
//             //   itemBuilder: (context, index) {
//             //     return ConatinerCardWidgets();
//             //   },
//             // ),
//             ConatinerCardWidgets(),
//             ConatinerCardWidgets(),
//             ConatinerCardWidgets(),
//             ConatinerCardWidgets(),
//             ConatinerCardWidgets(),
//             SizedBox(
//               height: 20,
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: Container(
//         height: 70,
//         width: double.infinity,
//         child: Card(
//           child: Row(
//             children: [
//               SizedBox(width: 15),
//               Text(
//                 'Amount to Pay',
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18),
//               ),
//               SizedBox(
//                 width: 20,
//               ),
//               Text(
//                 '41,50',
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20),
//               ),
//               Icon(
//                 Icons.euro,
//                 size: 19,
//               ),
//               Flexible(
//                 child: ButtonWidget(
//                   text: 'Pay',
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => ProfileGrid()));
//                   },
//                   padding: EdgeInsets.symmetric(horizontal: 28),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
