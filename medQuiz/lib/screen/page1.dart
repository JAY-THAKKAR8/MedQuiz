// import 'package:flutter/material.dart';
// import 'package:medquiz/screen/page2.dart';
// import 'package:medquiz/widget/text_form_field_widget.dart';

// class Screen1 extends StatelessWidget {
//   Screen1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final key = GlobalKey<FormState>();
//     TextEditingController username = TextEditingController();
//     TextEditingController password = TextEditingController();

//     return Scaffold(
//       body: Form(
//         key: key,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextformfieldWidget(
//                 hinttext: "UserName",
//                 controler: username,
//                 validator: (value) {
//                   if (value.toString().isEmpty) {
//                     return 'enter the value';
//                   }
//                   return null;
//                 }),
//             TextformfieldWidget(
//                 hinttext: "Password",
//                 controler: password,
//                 validator: (value) {
//                   if (value.toString().isEmpty) {
//                     return 'enter the value';
//                   }
//                   return null;
//                 }),
//             SizedBox(height: 20),
//             ElevatedButton(
//                 onPressed: () {
//                   if (key.currentState!.validate()) {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => Screen2(
//                             password: password.text,
//                             usename: username.text,
//                           ),
//                         ));
//                   }
//                 },
//                 child: Text("next screen"))
//           ],
//         ),
//       ),
//     );
//   }
// }
