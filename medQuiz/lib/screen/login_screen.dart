import 'package:flutter/material.dart';
import 'package:medquiz/screen/sign_up_screen.dart';
import 'package:medquiz/utility/app_assets.dart';
import 'package:medquiz/utility/app_colors.dart';
import 'package:medquiz/widget/text_field_widget.dart';
import 'package:medquiz/widget/text_widget.dart';

import '../widget/comman_button_widget.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => LoginscreenState();
}

class LoginscreenState extends State<Loginscreen> {
  final phonenumberController = TextEditingController();
  // final _key = GlobalKey<FormState>();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 20,
                ),
                ConstrainedBox(
                  constraints:
                      const BoxConstraints(maxHeight: 400, minHeight: 200),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(AppAssets.medquizright),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextWidget(
                  fontsize: 15,
                  textcolor: AppColor.textgrey,
                  fontweight: FontWeight.w600,
                  text: 'Enter phone number to continue',
                ),
                const SizedBox(
                  height: 20,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AppTextField(
                      contentPadding: const EdgeInsets.only(left: 50),
                      preffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextWidget(
                              text: '+39',
                              textcolor: AppColor.textgrey,
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 2,
                            color: AppColor.textgrey,
                          )
                        ],
                      ),
                      validator: (value) {
                        if (value != null && value.trim() != '') {
                        } else {
                          return 'Enter Phone number';
                        }
                        return null;
                      },
                      controller: phonenumberController,
                      hintText: 'Phone number',
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ),
                CommonButtonWidget(
                  text: 'Continue',
                  buttonColor: AppColor.primaryColor,
                  textColor: AppColor.textwhite,
                  innerPaddding: const EdgeInsets.only(top: 15, bottom: 15),
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Registrationform()));
                    }
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                TextWidget(
                  text: 'Or continue with',
                  fontsize: 16,
                  textcolor: AppColor.textgrey,
                ),
                const SizedBox(
                  height: 18,
                ),
                CommonButtonWidget(
                    text: 'Sign in with Facebook',
                    // innerPaddding: const EdgeInsets.only(left: 13, right: 13),
                    padding: const EdgeInsets.only(left: 13, right: 13),
                    textColor: AppColor.textwhite,
                    buttonColor: AppColor.facebookcolor,
                    onTap: () {}),
                CommonButtonWidget(
                  text: 'Sign in with Google',
                  textColor: AppColor.textwhite,
                  buttonColor: AppColor.googlecolor,
                  onTap: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
