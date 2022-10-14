import 'package:flutter/material.dart';
import 'package:medquiz/Features/Screens/splashscreen/splashscreen.dart';

import 'Features/Screens/geometricPage_42/page/geometricPage.dart';

void main() {
  runApp(
      MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MedQuiz Academy',
        theme: ThemeData(
            primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.white),
        home: const GeometricPageUi());
  }
}
