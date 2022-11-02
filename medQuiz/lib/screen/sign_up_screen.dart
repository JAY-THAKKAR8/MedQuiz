import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:medquiz/screen/terms_and_condition_screen.dart';
import 'package:medquiz/utility/app_assets.dart';
import 'package:medquiz/utility/app_colors.dart';
import 'package:medquiz/widget/text_widget.dart';

import '../utility/utility.dart';
import '../widget/comman_button_widget.dart';
import '../widget/text_field_widget.dart';

class Registrationform extends StatefulWidget {
  const Registrationform({Key? key}) : super(key: key);

  @override
  State<Registrationform> createState() => _RegistrationformState();
}

class _RegistrationformState extends State<Registrationform> {
  final phonenumberController = TextEditingController();
  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final dateController = TextEditingController();
  final emailController = TextEditingController();
  final chekedboxvalue = ValueNotifier<bool>(false);

  notify() {
    if (mounted) {
      setState(() {});
    }
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ConstrainedBox(
                  constraints:
                      const BoxConstraints(maxHeight: 400, minHeight: 200),
                  child: Image.asset(AppAssets.medquizright)),
              TextWidget(
                  fontsize: 17,
                  text: 'New user? Register now to continue',
                  textcolor: AppColor.textgrey),
              AppTextField(
                filled: true,
                padding: const EdgeInsets.fromLTRB(15, 45, 15, 15),
                contentPadding:
                    const EdgeInsets.only(top: 15, bottom: 15, left: 20),
                fillColor: AppColor.lightgrey,
                labelText: "Name",
                controller: nameController,
                enabled: true,
                validator: (value) {
                  if (value != null && value.trim() != '') {
                  } else {
                    return 'Enter Name';
                  }
                  return null;
                },
              ),
              AppTextField(
                filled: true,
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                contentPadding:
                    const EdgeInsets.only(top: 15, bottom: 15, left: 20),
                fillColor: AppColor.lightgrey,
                labelText: "Surname",
                controller: surnameController,
                enabled: true,
                validator: (value) {
                  if (value != null && value.trim() != '') {
                  } else {
                    return 'Enter Surname';
                  }
                  return null;
                },
              ),
              AppTextField(
                filled: true,
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                contentPadding:
                    const EdgeInsets.only(top: 15, bottom: 15, left: 20),
                fillColor: AppColor.lightgrey,
                labelText: "Date of birth",
                onTap: () {
                  Utility.openDatePicker(
                    context: context,
                    onSelect: (date) {
                      dateController.text = date.toString();
                      notify();
                    },
                  );
                },
                controller: dateController,
                enabled: true,
                validator: (value) {
                  if (value != null && value.trim() != '') {
                  } else {
                    return 'Enter Date of Birth';
                  }
                  return null;
                },
              ),
              AppTextField(
                filled: true,
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                contentPadding:
                    const EdgeInsets.only(top: 15, bottom: 15, left: 20),
                fillColor: AppColor.lightgrey,
                labelText: "Email address",
                controller: emailController,
                enabled: true,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value != null &&
                      value.trim() != '' &&
                      !Utility.isValidEmail(value)) {
                    return 'Enter Valid Email';
                  }

                  return null;
                },
              ),
              AppTextField(
                filled: true,
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                contentPadding:
                    const EdgeInsets.only(top: 15, bottom: 15, left: 20),
                fillColor: AppColor.lightgrey,
                labelText: "Phone number",
                controller: phonenumberController,
                enabled: true,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value != null && value.trim() != '') {
                  } else {
                    return 'Enter Phone number';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ValueListenableBuilder<bool>(
                      valueListenable: chekedboxvalue,
                      builder: (context, value, _) {
                        return GestureDetector(
                          onTap: () {
                            chekedboxvalue.value = !chekedboxvalue.value;
                          },
                          child: Icon(
                            value
                                ? Icons.check_box
                                : Icons.check_box_outline_blank,
                            size: 20,
                            color: AppColor.primaryColor,
                          ),
                        );
                      },
                    ),
                    Flexible(
                      child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(children: [
                            TextSpan(
                                text: "By Singing up you're agree to our ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.textblack,
                                    fontSize: 15)),
                            TextSpan(
                              text: 'Privacy',
                              style: TextStyle(
                                  color: AppColor.primaryColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const TermsAndConditionScreen()));
                                },
                            ),
                            TextSpan(
                                text: ' and ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.textblack,
                                    fontSize: 15)),
                            TextSpan(
                              text: 'Terms & Conditions',
                              style: TextStyle(
                                  color: AppColor.primaryColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const TermsAndConditionScreen()));
                                },
                            ),
                          ])),
                    )
                  ],
                ),
              ),
              CommonButtonWidget(
                text: 'Continue',
                textColor: AppColor.textwhite,
                fontSize: 18,
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    if (chekedboxvalue.value) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Registrationform()));
                    } else {
                      Utility.toast(
                          message: 'Please accept terms and condition',
                          color: AppColor.textblack);
                    }
                  }
                },
              ),
              const SizedBox(height: 15),
              TextWidget(
                text: "We'll send verification code\n on given number.",
                textcolor: AppColor.textgrey,
                textAlign: TextAlign.center,
                fontsize: 16,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 15)
            ],
          ),
        ),
      ),
    );
  }
}
