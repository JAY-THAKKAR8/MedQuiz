import 'package:flutter/material.dart';
import 'package:medquiz/utils/theme/medQuiz_colors.dart';
import 'package:medquiz/utils/theme/medQuiz_style.dart';
import 'package:medquiz/utils/widgets/commonButtonWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HomePage",
          style: AppTextStyles.appbarTextStyle,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Hello page", style: AppTextStyles.headingTextStyle),
            CommonButtonWidget(
                buttonText: "Click",
                onTap: () {},
                buttonColor: MedQuizColors.darkBlueColor),
          ],
        ),
      ),
    );
  }
}
