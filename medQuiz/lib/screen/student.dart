// import 'package:flutter/material.dart';
// import 'package:medquiz/screen/freshman.dart';
// import 'package:medquiz/utility/app_colors.dart';
// import 'package:medquiz/widget/button_widget.dart';
// import 'package:medquiz/widget/container_widget.dart';

// class Student extends StatefulWidget {
//   const Student({Key? key}) : super(key: key);

//   @override
//   State<Student> createState() => _StudentState();
// }

// class _StudentState extends State<Student> {
//   bool chekedboxvalue = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Student'),
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
//                   SizedBox(height: 250),
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
//                         MaterialPageRoute(builder: (context) => Freshmen()));
//                   }),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
