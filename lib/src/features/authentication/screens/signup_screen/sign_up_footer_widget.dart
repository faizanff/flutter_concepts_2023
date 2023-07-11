import 'package:flutter/material.dart';
import 'package:flutter_codes/src/constants/colors.dart';
import 'package:flutter_codes/src/constants/image_strings.dart';
import 'package:flutter_codes/src/constants/sizes.dart';
import 'package:flutter_codes/src/constants/text_strings.dart';
import 'package:flutter_codes/src/features/authentication/screens/login_screen/login_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("OR"),
        const SizedBox(height: tFormHeight -10,),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(tSignInWithGoogleLogo),
              width: 35,
            ),
            label: Text(tSignInWithGoogle.toUpperCase()),
            style: ButtonStyle(
              shape:
              MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: const BorderSide(color: tSecondaryColor)
                ),
              ),
            ),
          ),
        ),

        TextButton(onPressed: (){Get.offAll(() => const LoginScreen());}, child:  Text.rich(

          TextSpan(
            children: [
              TextSpan(text: tAlreadyHaveAnAccount,style: Theme.of(context).textTheme.bodyLarge),
              TextSpan(text: tLogin.toUpperCase(),style: TextStyle(color: tAccentColor)),
            ],
          ),
        ),
        ),
      ],
    );
  }
}