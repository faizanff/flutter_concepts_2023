import 'package:flutter/material.dart';
import 'package:flutter_codes/src/common_widgets/fade_in_animation/animation_widget.dart';
import 'package:flutter_codes/src/constants/colors.dart';
import 'package:flutter_codes/src/constants/image_strings.dart';
import 'package:flutter_codes/src/features/authentication/models/fade_in_animation_model.dart';
import 'package:flutter_codes/src/features/authentication/screens/login_screen/login_screen.dart';
import 'package:flutter_codes/src/features/authentication/screens/signup_screen/signup_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startWelcomeAnimation();
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
      body: Stack(
        children: [
          TFadeInAnimation(
            durationInMs: 1200,
            animate: TAnimatePosition(
              bottomBefore: -100,
              bottomfter: 0,
              topBefore: 0,
              topAfter: 0,
              rightAfter: 0,
              rightBefore: 0,
              leftBefore: 0,
              leftAfter: 0,
            ),
            child: Container(
              padding: const EdgeInsets.all(tDefaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: AssetImage(tWelcomeScreenImage),
                    height: height * 0.6,
                  ),
                  Column(
                    children: [
                      Text(
                        tWelcomeTitle,
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      Text(
                        tWelcomeSubtitle, textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(

                            onPressed: () {Get.offAll(() => const LoginScreen());}, child: Text(tLogin.toUpperCase())),
                      ),
                      const SizedBox(width: 10.0,),
                      Expanded(
                        child: ElevatedButton(

                            onPressed: () {Get.offAll(() => const SignUpScreen()); }, child: Text(tSignup.toUpperCase())),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
