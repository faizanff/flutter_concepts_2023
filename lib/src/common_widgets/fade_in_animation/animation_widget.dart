import 'package:flutter/material.dart';
import 'package:flutter_codes/src/features/authentication/models/fade_in_animation_model.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../constants/image_strings.dart';
import 'fade_in_animation_controller.dart';

class TFadeInAnimation extends StatelessWidget {
   TFadeInAnimation({
    super.key,
    required this.durationInMs,
     required this.child,
     this.animate,
  });

  final controller = Get.put(FadeInAnimationController());
  final int durationInMs;
  final TAnimatePosition? animate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => AnimatedPositioned(
        duration:  Duration(milliseconds: durationInMs),
        top: controller.animate.value ? animate!.topAfter : animate!.topBefore,     //  0 : -50,
        left: controller.animate.value ? animate!.leftAfter : animate!.leftBefore,     // 0 : -40,
        bottom: controller.animate.value ? animate!.bottomfter : animate!.bottomBefore,
        right: controller.animate.value ? animate!.rightAfter : animate!.rightBefore,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: durationInMs),
          opacity: controller.animate.value ? 1 : 0,
          // child: const Image(
          //   image: AssetImage(tSplashTopIcon),
          // ),
          child: child,
        ),
      ),
    );
  }
}