import 'package:flutter/material.dart';
import 'package:flutter_codes/src/common_widgets/form/form_header_widget.dart';
import 'package:flutter_codes/src/constants/colors.dart';
import 'package:flutter_codes/src/constants/image_strings.dart';
import 'package:flutter_codes/src/constants/sizes.dart';
import 'package:flutter_codes/src/constants/text_strings.dart';
import 'package:flutter_codes/src/features/authentication/screens/login_screen/login_header_widget.dart';
import 'package:flutter_codes/src/features/authentication/screens/login_screen/login_screen.dart';
import 'package:flutter_codes/src/features/authentication/screens/signup_screen/sign_up_footer_widget.dart';
import 'package:flutter_codes/src/features/authentication/screens/signup_screen/sign_up_form_fields.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 FormHeaderWidget(
                  image: tWelcomeScreenImage,
                  title: tSignUpTitle,
                  subTitle: tSignUpSubTitle,
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
                SignUpFormWidget(),
                // ------------- FOOTER SECTION -------------
                SignUpFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


