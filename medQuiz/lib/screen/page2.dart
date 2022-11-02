import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  Screen2({super.key, required this.usename, required this.password});
  final String usename;
  final String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("${usename}"), Text("${password}")],
        ),
      ),
    );
  }
}
