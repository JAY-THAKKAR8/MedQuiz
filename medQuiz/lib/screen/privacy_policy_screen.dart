import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:medquiz/models/privacypolicy_model.dart';
import 'package:medquiz/response/privacypolicy_response.dart';
import 'package:medquiz/utility/app_colors.dart';

import '../utility/api_managar.dart';
import '../utility/app_string.dart';

class Privacypolicy extends StatefulWidget {
  const Privacypolicy({Key? key}) : super(key: key);

  @override
  State<Privacypolicy> createState() => _PrivacypolicyState();
}

class _PrivacypolicyState extends State<Privacypolicy> {
  PrivacypolicyModel data = PrivacypolicyModel();
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

  Future<void> getTermsAndConditions() async {
    if (await ApiManager.checkInternet()) {
      Map<String, dynamic> request = {'type': 'TERMS_CONDITION'};
      PrivacypolicyResponse response = PrivacypolicyResponse.fromJson(
          await ApiManager().getCall(AppString.setting, request, context));
      log(response.data.toString());
      if (response.status == "1" &&
          response.data != null &&
          response.data!.isNotEmpty) {
        data = response.data!.last;
        _notify();
        // log(condition.toString());
      }
    }
  }

  _notify() {
    if (mounted) {
      setState(() {});
    }
  }
}
