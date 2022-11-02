import 'package:flutter/material.dart';
import 'package:medquiz/utility/app_colors.dart';

class TermsAndConditionScreen extends StatelessWidget {
  const TermsAndConditionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms & Condition'),
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
