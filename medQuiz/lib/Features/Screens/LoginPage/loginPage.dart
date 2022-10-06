// ignore: file_names
import 'package:flutter/material.dart';
import 'package:medquiz/utils/theme/medQuiz_colors.dart';
import 'package:medquiz/utils/widgets/button_widget.dart';
import 'package:medquiz/utils/widgets/text_form_field_widget.dart';
import 'package:medquiz/utils/widgets/text_widget.dart';

import '../../../utils/constants/image_path.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => LoginscreenState();
}

class LoginscreenState extends State<Loginscreen> {
  final phonenumberController = TextEditingController();

  // ignore: non_constant_identifier_names
  final Key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: Key,
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(AppAssets.medquiz),
              ),
              const SizedBox(
                height: 70,
              ),
              const TextWidget(text: 'Enter phone number to continue'),
              const SizedBox(
                height: 30,
              ),
              TextformfieldWidget(
                hinttext: 'Phone Number',
                prefixicon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      TextWidget(text: '+39'),
                      SizedBox(
                        height: 50,
                        child: VerticalDivider(
                          color: MedQuizColors.blackColor,
                          width: 25,
                          thickness: 2,
                          indent: 10,
                          endIndent: 10,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ButtonWidget(
                text: 'Continue',
                textcolor: Colors.white,
                // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                buttonColor: MedQuizColors.primaryColor,
                onTap: () {
                  if (Key.currentState!.validate()) {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const Registrationform()));
                  }
                },
              ),
              const SizedBox(
                height: 50,
              ),
              const TextWidget(text: 'Or continue with'),
              const SizedBox(
                height: 25,
              ),
              ButtonWidget(
                  text: 'Sign in with Facebook',
                  buttonColor: MedQuizColors.facebookcolor,
                  onTap: () {}),
              const SizedBox(
                height: 10,
              ),
              ButtonWidget(
                text: 'Sign in with Google',
                buttonColor: MedQuizColors.googlecolor,
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
