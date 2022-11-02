import 'package:flutter/material.dart';
import 'package:medquiz/utility/app_colors.dart';

class Privacypolicy extends StatelessWidget {
  const Privacypolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              size: 15,
            )),
        backgroundColor: AppColor.primaryColor,
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
