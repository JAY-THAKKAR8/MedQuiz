// import 'package:flutter/material.dart';
// import 'package:medquiz/screen/student.dart';
// import 'package:medquiz/utility/app_colors.dart';
// import 'package:medquiz/widget/button_widget.dart';
// import 'package:medquiz/widget/container_widget.dart';

// class Selectcategory extends StatefulWidget {
//   const Selectcategory({Key? key}) : super(key: key);

//   @override
//   State<Selectcategory> createState() => _SelectcategoryState();
// }

// class _SelectcategoryState extends State<Selectcategory> {
//   bool chekedboxvalue = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Select category'),
//         centerTitle: true,
//         backgroundColor: AppColor.primaryColor,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 55),
//               child: Column(
//                 children: [
//                   ContainerWidget(),
//                   SizedBox(height: 10),
//                   ContainerWidget(),
//                   SizedBox(height: 10),
//                   ContainerWidget(),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: ButtonWidget(
//                   text: 'submit',
//                   textcolor: Colors.white,
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => Student()));
//                   }),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
