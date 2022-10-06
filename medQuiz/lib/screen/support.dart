import 'package:flutter/material.dart';

import '../utils/theme/medQuiz_colors.dart';

class support extends StatelessWidget {
  const support({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MedQuizColors.color10gray,
      appBar: AppBar(
        backgroundColor: MedQuizColors.darkBlueColor,
        leading: const Icon(Icons.arrow_back_ios),
        title: const Center(child: Text('Support')),
      ),
      body: Column(children: [
        const SizedBox(
          height: 250,
          child: Image(
              image: NetworkImage(
                  'https://simplybook.it/uploads/medquizacademy/image_files/preview/2ef797d87b7b4d488576946311d2256e.png')),
        ),
        Container(
          height: 250,
          width: double.maxFinite,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Connect us',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 30, 0, 10),
                  child: Text(
                    'Call us',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
