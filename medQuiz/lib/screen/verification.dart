// import 'package:flutter/material.dart';
// import 'package:medquiz/screen/select_category.dart';
// import 'package:medquiz/utility/app_colors.dart';
// import 'package:medquiz/widget/text_form_field_widget.dart';
// import 'package:medquiz/widget/text_widget.dart';

// import '../widget/button_widget.dart';

// class Verification extends StatefulWidget {
//   const Verification({Key? key}) : super(key: key);

//   @override
//   State<Verification> createState() => _VerificationState();
// }

// class _VerificationState extends State<Verification> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Verification'),
//         backgroundColor: AppColor.primaryColor,
//       ),
//       body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//         const SizedBox(
//           height: 50,
//         ),
//         const Padding(
//           padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
//           child:
//               TextWidget(text: "Enter verification code sent on Given Number"),
//         ),

//         TextformfieldWidget(
//           hinttext: 'Enter verification code',
//         ),
//         const SizedBox(height: 10),
//         ButtonWidget(
//             text: 'Submit',
//             onTap: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => const Selectcategory()));
//             })

//         // ignore: deprecated_member_use
//       ]),
//     );
//   }
// }
