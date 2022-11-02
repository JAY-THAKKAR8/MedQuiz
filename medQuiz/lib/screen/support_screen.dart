import 'package:flutter/material.dart';

import '../utils/theme/medQuiz_colors.dart';
import '../utils/theme/medQuiz_style.dart';
import '../utils/widgets/submitButtonWidget.dart';

class Support extends StatelessWidget {
  const Support({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MedQuizColors.color10gray,
      appBar: AppBar(
        backgroundColor: MedQuizColors.darkBlueColor,
        leading: const Icon(Icons.arrow_back_ios),
        title: const Center(child: Text('Support')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
              child: Image(
                  image: NetworkImage(
                      'https://simplybook.it/uploads/medquizacademy/image_files/preview/2ef797d87b7b4d488576946311d2256e.png')),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
                height: 250,
                width: double.maxFinite,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Connect us',
                          style: AppTextStyles.GrayTextstyle),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(40, 30, 0, 10),
                        child: Text('Call us',
                            style: AppTextStyles.GrayNormalTextstyle),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.phone,
                            color: MedQuizColors.darkBlueColor,
                            size: 20.0,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Text(
                              '+39 9865374368',
                              style: AppTextStyles.headingTextStyle,
                            ),
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(40, 30, 0, 10),
                        child: Text('Mail us',
                            style: AppTextStyles.GrayNormalTextstyle),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.phone,
                            color: MedQuizColors.darkBlueColor,
                            size: 20.0,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Text(
                              'help@medquiz.com',
                              style: AppTextStyles.headingTextStyle,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Container(
                height: 180,
                width: double.maxFinite,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Write as directly',
                          style: AppTextStyles.GrayTextstyle),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.mail,
                            color: MedQuizColors.darkBlueColor,
                            size: 20.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 13.0),
                            child: Text("Your Message",
                                style: AppTextStyles.GrayNormalTextstyle),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35, 30, 0, 0),
                        child: TextFormField(),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SubmitButtonWidget(
          buttonColor: MedQuizColors.darkBlueColor,
          buttonText: "Submit",
          onTap: (() {}),
        ),
      ),
    );
  }
}
