import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medquiz/screen/login_screen.dart';
import 'package:medquiz/utility/app_assets.dart';
import 'package:medquiz/utility/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), (() {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const Loginscreen()));
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primaryColor,
      child: Image.asset(
        AppAssets.medquizbelowwite,
      ),
    );
  }
}
