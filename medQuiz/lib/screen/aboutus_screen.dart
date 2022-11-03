import 'package:flutter/material.dart';
import 'package:medquiz/utility/app_colors.dart';
import 'package:medquiz/widget/aboutuscontainer_widget.dart';
import 'package:medquiz/widget/text_widget.dart';
import 'package:medquiz/widget/textofaboutus_widget.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.primaryColor,
          title: const TextWidget(
            text: 'About us',
            fontsize: 22,
            textcolor: Colors.white,
          ),
          centerTitle: true,
          leading: const Icon(Icons.arrow_back_ios_new),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(120),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Flexible(
                      child: AbouttextWidget(
                          numbertext: '650', text: 'student studying')),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  Flexible(
                      child: AbouttextWidget(
                          numbertext: '650', text: 'student studying')),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  Flexible(
                      child: AbouttextWidget(
                          numbertext: '650', text: 'student studying')),
                ],
              ),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return const AboutustxtWidget();
          },
        ));
  }
}
