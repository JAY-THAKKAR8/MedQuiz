import 'package:flutter/material.dart';
import 'package:medquiz/utils/theme/medQuiz_colors.dart';
import 'package:medquiz/utils/theme/medQuiz_style.dart';

class GeometricPageUi extends StatefulWidget {
  const GeometricPageUi({Key? key}) : super(key: key);

  @override
  State<GeometricPageUi> createState() => _GeometricPageUiState();
}

class _GeometricPageUiState extends State<GeometricPageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MedQuizColors.darkBlueColor,
         leading: Icon(Icons.arrow_back_ios,color: MedQuizColors.whiteColor),
        title: Text("Geometric weekly test",style: AppTextStyles.appbarTextStyle),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: Container(
            color: MedQuizColors.darkBlueColor,
            child: Row(
              children: [
                   Column(
                     children: [
                       CircleAvatar(

                       )
                     ],
                   )
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 4,color: Colors.grey),
            borderRadius: BorderRadius.circular(20)
          ),
        ),
      ),
    );
  }
}
