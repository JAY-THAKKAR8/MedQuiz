// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:medquiz/utils/theme/medQuiz_colors.dart';

class MedQuiz extends StatefulWidget {
  const MedQuiz({Key? key}) : super(key: key);

  @override
  State<MedQuiz> createState() => _MedQuizState();
}

class _MedQuizState extends State<MedQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: MedQuizColors.darkBlueColor,
        centerTitle: true,
        title: const Text(
          'About us',
          style: TextStyle(color: Colors.white),
        ),
        leading: const Icon(
          Icons.arrow_back_sharp,
        ),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(120),
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      Text(
                        '650',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Students',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text('studying',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16))
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        '95.5 %',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Last Year',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text('Result',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16))
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        '650',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Students',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text('studying',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16))
                    ],
                  )
                ],
              ),
            )),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Card(
            margin: const EdgeInsets.symmetric(vertical: 12),
            elevation: 0,
            child: Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'About us',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text('lorem' * 200)
                  ]),
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(vertical: 12),
            elevation: 0,
            child: Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'About us',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text('lorem' * 200)
                  ]),
            ),
          )
        ]),
      ),
    );
  }
}
