import 'package:flutter/material.dart';
import 'package:flutter_codes/src/constants/colors.dart';
import 'package:flutter_codes/src/constants/image_strings.dart';
import 'package:flutter_codes/src/constants/sizes.dart';
import 'package:flutter_codes/src/constants/text_strings.dart';
import 'package:flutter_codes/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:flutter_codes/src/features/authentication/models/fade_in_animation_model.dart';
import 'package:flutter_codes/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:flutter_codes/src/utils/theme/theme.dart';
import 'package:flutter_codes/src/utils/theme/text_theme.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../common_widgets/fade_in_animation/animation_widget.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   bool animate = false;
//
//   @override
//   void initState() {
//     startAnimation();
//   }

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            TFadeInAnimation(
              durationInMs: 1600,
              animate: TAnimatePosition(
                topAfter: 0,
                topBefore: -50,
                leftAfter: 0,
                leftBefore: -40,
              ),
              child: const Image(
                image: AssetImage(tSplashTopIcon),
              ),
            ),
            TFadeInAnimation(
              durationInMs: 1600,
              animate: TAnimatePosition(
                topAfter: 80,
                topBefore: 80,
                leftAfter: tDefaultSize,
                leftBefore: -80,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tAppName,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Text(
                    tAppTagLine,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ],
              ),
            ),
            TFadeInAnimation(
              durationInMs: 2400,
              animate: TAnimatePosition(
                  bottomfter: 170,
                  bottomBefore: 0,
                  rightAfter: 40,
                  rightBefore: 0,
                  leftAfter: 30,
                  leftBefore: 0),
              child: const Image(image: AssetImage(tSplashImage)),
            ),
            TFadeInAnimation(
              durationInMs: 1600,
              animate: TAnimatePosition(
                  bottomfter: 40, bottomBefore: 0,),
              child: Container(
                width: tSplashContainerSize,
                height: tSplashContainerSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: tPrimaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
