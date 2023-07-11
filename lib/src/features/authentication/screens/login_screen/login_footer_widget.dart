import 'package:flutter/material.dart';
import 'package:flutter_codes/src/constants/colors.dart';
import 'package:flutter_codes/src/constants/image_strings.dart';
import 'package:flutter_codes/src/constants/sizes.dart';
import 'package:flutter_codes/src/constants/text_strings.dart';
import 'package:flutter_codes/src/features/authentication/screens/login_screen/login_screen.dart';
import 'package:flutter_codes/src/features/authentication/screens/signup_screen/signup_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height: tFormHeight,),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: const Image(image: AssetImage(tSignInWithGoogleLogo),width: 35.0,),
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
              ),
              onPressed: (){},
              label: const Text(tSignInWithGoogle)),
        ),
        const SizedBox(height: tFormHeight,),
        TextButton(onPressed: (){Get.to(const SignUpScreen());}, child:  Text.rich(
            TextSpan(text: tDontHaveAnAccount,style: const TextStyle(color: tSecondaryColor),
              children: [
                TextSpan(text: tSignup.toUpperCase(),style: const TextStyle(color: tAccentColor) )
              ],
            )
        ),
        ),
      ],
    );
  }
}