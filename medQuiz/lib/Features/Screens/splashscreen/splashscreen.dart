import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medquiz/Features/Screens/LoginPage/loginPage.dart';
import 'package:medquiz/utils/constants/image_path.dart';

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
    return Image.asset(
      AppAssets.splashimage,
      fit: BoxFit.fill,
    );
  }
}
