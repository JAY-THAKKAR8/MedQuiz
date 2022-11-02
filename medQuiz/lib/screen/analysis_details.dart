import 'package:flutter/material.dart';
import 'package:medquiz/utility/app_colors.dart';
import 'package:medquiz/widget/analysis_details_widget.dart';

class AnalysisDetails extends StatelessWidget {
  const AnalysisDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Maths analysis details'),
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
        body: ListView.builder(
          itemBuilder: (context, index) {
            return const AnalysisDetailsWidget();
          },
        ));
  }
}
