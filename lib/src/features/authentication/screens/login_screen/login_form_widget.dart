import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codes/src/constants/colors.dart';
import 'package:flutter_codes/src/features/authentication/controllers/sign_up_controller.dart';
import 'package:flutter_codes/src/features/authentication/screens/forget_password/forget_password_option/build_show_modal_bottom_sheet.dart';
import 'package:flutter_codes/src/features/authentication/screens/forget_password/forget_password_option/forget_password_btn_widget.dart';
import 'package:flutter_codes/src/features/core/screens/dashboard/dashboard.dart';
import 'package:flutter_codes/src/repository/authentication_repository/authentication_repository.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: tFormHeight),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.person_outline_outlined,
                  color: tSecondaryColor,
                ),
                labelText: tEmail,
                hintText: tEmail,
                border: OutlineInputBorder(),
                labelStyle: TextStyle(color: tSecondaryColor),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: tSecondaryColor)),
              ),
            ),
            const SizedBox(
              height: tFormHeight,
            ),
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint, color: tSecondaryColor),
                labelText: tPassword,
                hintText: tPassword,
                border: OutlineInputBorder(),
                suffixIcon:
                    Icon(Icons.remove_red_eye_sharp, color: tSecondaryColor),
                labelStyle: TextStyle(color: tSecondaryColor),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: tSecondaryColor)),
              ),
              obscureText: true,
            ),
            const SizedBox(
              height: tFormHeight,
            ),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    ForgetPasswordScreen.buildShowModalBottomSheet(context);
                  },
                  child: const Text(
                    tForgetPassword,
                    style: TextStyle(color: tSecondaryColor),
                  ),
                )),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    onPressed: () {
                      FirebaseAuth.instance.signInWithEmailAndPassword(email: controller.email.text.trim(), password: controller.password.text.trim());
                    },
                    child: Text(tLogin.toUpperCase()))),

            // -------- body section part End --------
          ],
        ),
      ),
    );
  }

}


