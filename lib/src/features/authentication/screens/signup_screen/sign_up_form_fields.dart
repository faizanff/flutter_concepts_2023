import 'package:flutter/material.dart';
import 'package:flutter_codes/src/constants/sizes.dart';
import 'package:flutter_codes/src/constants/text_strings.dart';
import 'package:flutter_codes/src/features/authentication/controllers/sign_up_controller.dart';
import 'package:flutter_codes/src/features/authentication/models/user_model.dart';
import 'package:flutter_codes/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';
import 'package:flutter_codes/src/features/authentication/screens/login_screen/login_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formkey = GlobalKey<FormState>();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight),
      child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: controller.fullName,
                decoration: const InputDecoration(
                  label: Text(tFullName),
                  prefixIcon: Icon(Icons.person_outline_rounded),
                  hintText: tFullName,
                ),
              ),
              const SizedBox(
                height: tFormHeight,
              ),
              TextFormField(
                controller: controller.email,
                decoration: const InputDecoration(
                  label: Text(tEmail),
                  prefixIcon: Icon(Icons.email_outlined),
                  hintText: tEmail,
                ),
              ),
              const SizedBox(
                height: tFormHeight,
              ),
              TextFormField(
                controller: controller.phoneNo,
                decoration: const InputDecoration(
                  label: Text(tPhoneNumber),
                  prefixIcon: Icon(Icons.numbers),
                  hintText: tPhoneNumber,
                ),
              ),
              const SizedBox(
                height: tFormHeight,
              ),
              TextFormField(
                controller: controller.password,
                decoration: const InputDecoration(
                  label: Text(tPassword),
                  prefixIcon: Icon(Icons.fingerprint),
                  hintText: tPassword,
                ),
              ),
              const SizedBox(
                height: tFormHeight,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      //for email authentication
                      // SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());

                      //for phone authentication
                      // SignUpController.instance.phoneAuthentication(controller.phoneNo.text.trim());

                      final user = UserModel(
                          fullName: controller.fullName.text.trim(),
                          email: controller.email.text.trim(),
                          phoneNo: controller.phoneNo.text.trim(),
                          password: controller.password.text.trim());
                      SignUpController.instance.createUser(user);
                      SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
                      
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  child: Text(tSignup.toUpperCase()),
                ),
              )
            ],
          )),
    );
  }
}
