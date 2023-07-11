import 'package:flutter/material.dart';
import 'package:flutter_codes/src/common_widgets/form/form_header_widget.dart';
import 'package:flutter_codes/src/constants/image_strings.dart';
import 'package:flutter_codes/src/constants/sizes.dart';
import 'package:flutter_codes/src/constants/text_strings.dart';
import 'package:flutter_codes/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';
import 'package:get/get.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              const SizedBox(
                height: tDefaultSize * 5,
              ),
              const FormHeaderWidget(
                image: tForgetPasswordImage,
                title: tForgetPassword2,
                subTitle: tEnterRecoveryEmail,
                crossAxisAlignment: CrossAxisAlignment.center,
                heightBetween: 30.0,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: tFormHeight + 10),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text(tEmail),
                      hintText: tEmail,
                      prefixIcon: Icon(Icons.mail_outline_rounded),
                    ),
                  ),
                  const SizedBox(height: tFormHeight),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                      ),
                      onPressed: () {Get.to(const OtpScreen());},
                      child: Text(tNextEmail.toUpperCase()),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}