// import 'package:flutter/material.dart';
// import 'package:medquiz/screen/shop.dart';
// import 'package:medquiz/utility/app_colors.dart';
// import 'package:medquiz/widget/textbutton_widget.dart';
// import 'package:medquiz/widget/underline_textformfield_widget.dart';

// class Profile extends StatefulWidget {
//   const Profile({Key? key}) : super(key: key);

//   @override
//   State<Profile> createState() => _ProfileState();
// }

// class _ProfileState extends State<Profile> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Profile',
//         ),
//         elevation: 0,
//         backgroundColor: AppColor.primaryColor,
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Stack(
//               clipBehavior: Clip.none,
//               alignment: Alignment.center,
//               children: [
//                 Container(
//                   color: AppColor.primaryColor,
//                   height: 80,
//                 ),
//                 Positioned(
//                   top: 25,
//                   child: Container(
//                     height: 100,
//                     width: 100,
//                     decoration: const BoxDecoration(
//                       shape: BoxShape.circle,
//                       image: DecorationImage(
//                           image: NetworkImage(
//                               'https://th.bing.com/th/id/OIP.ZTnds1AfVNk7PdUyhJzJNwHaHz?pid=ImgDet&rs=1')),
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   top: 25,
//                   left: 200,
//                   child: Container(
//                     height: 30,
//                     width: 30,
//                     decoration: const BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.white,
//                     ),
//                     child: Icon(
//                       Icons.camera_alt,
//                       color: AppColor.primaryColor,
//                       size: 16,
//                     ),
//                   ),
//                 )
//               ],
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.person,
//                         color: AppColor.primaryColor,
//                       ),
//                       const SizedBox(width: 10),
//                       const Flexible(
//                           child: UnderlineTextFormFieldWidget(text: 'Name')),
//                       TextButtonWidget(
//                         onpressed: () {},
//                         text: 'edit',
//                       )
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.person,
//                         color: AppColor.primaryColor,
//                       ),
//                       const SizedBox(width: 10),
//                       const Flexible(
//                           child: UnderlineTextFormFieldWidget(text: 'Surname')),
//                       TextButtonWidget(
//                         onpressed: () {},
//                         text: 'edit',
//                       )
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.email,
//                         color: AppColor.primaryColor,
//                       ),
//                       const SizedBox(width: 10),
//                       const Flexible(
//                           child: UnderlineTextFormFieldWidget(
//                               text: 'Email address')),
//                       TextButtonWidget(
//                         onpressed: () {},
//                         text: 'edit',
//                       )
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.calendar_month_outlined,
//                         color: AppColor.primaryColor,
//                       ),
//                       const SizedBox(width: 10),
//                       const Flexible(
//                           child: UnderlineTextFormFieldWidget(
//                               text: 'Date of birth')),
//                       TextButtonWidget(
//                         onpressed: () {},
//                         text: 'edit',
//                       )
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.phone,
//                         color: AppColor.primaryColor,
//                       ),
//                       const SizedBox(width: 10),
//                       const Flexible(
//                           child: UnderlineTextFormFieldWidget(
//                               text: 'Phone number')),
//                       TextButtonWidget(
//                         onpressed: () {},
//                         text: 'edit',
//                       )
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.location_on,
//                         color: AppColor.primaryColor,
//                       ),
//                       const SizedBox(width: 10),
//                       const Flexible(
//                           child:
//                               UnderlineTextFormFieldWidget(text: 'Birthplace')),
//                       TextButtonWidget(
//                         onpressed: () {},
//                         text: 'edit',
//                       )
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.person_pin_sharp,
//                         color: AppColor.primaryColor,
//                       ),
//                       const SizedBox(width: 10),
//                       const Flexible(
//                           child:
//                               UnderlineTextFormFieldWidget(text: 'Category')),
//                       TextButtonWidget(
//                         onpressed: () {},
//                         text: 'edit',
//                       )
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.chrome_reader_mode_sharp,
//                         color: AppColor.primaryColor,
//                       ),
//                       const SizedBox(width: 10),
//                       const Flexible(
//                           child:
//                               UnderlineTextFormFieldWidget(text: 'Exercise')),
//                       TextButtonWidget(
//                         onpressed: () {},
//                         text: 'edit',
//                       )
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.school,
//                         color: AppColor.primaryColor,
//                       ),
//                       const SizedBox(width: 10),
//                       const Flexible(
//                           child: UnderlineTextFormFieldWidget(
//                               text: 'Qualification')),
//                       TextButtonWidget(
//                         onpressed: () {},
//                         text: 'edit',
//                       )
//                     ],
//                   ),
//                   TextButtonWidget(
//                     onpressed: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const Shop()));
//                     },
//                     text: 'Log Out',
//                     fontSize: 15,
//                   )
//                 ],
//               ),
//             )
//             // Row(
//             //   children: [
//             //     Icon(
//             //       Icons.person,
//             //       color: AppColor.primaryColor,
//             //     ),
//             //     UnderlineTextFormFieldWidget(),
//             //     Text('Edit',
//             //         style: TextStyle(
//             //             color: AppColor.primaryColor,
//             //             fontWeight: FontWeight.bold))
//             //   ],
//             // ),
//             // TextButton(
//             //     style: TextButton.styleFrom(
//             //       primary: Colors.white,
//             //     ),
//             //     onPressed: () {
//             //       Navigator.push(context,
//             //           MaterialPageRoute(builder: ((context) => const Shop())));
//             //     },
//             //     child: Text('Log Out',
//             //         style: TextStyle(
//             //             color: AppColor.primaryColor,
//             //             fontWeight: FontWeight.bold,
//             //             fontSize: 18))
//             //             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
