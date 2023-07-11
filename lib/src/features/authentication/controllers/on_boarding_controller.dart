import 'package:flutter/material.dart';
import 'package:flutter_codes/src/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import '../models/model_on_boarding.dart';
import '../screens/on_boarding/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController{
  RxInt CurrentPage = 0.obs;
  final controller = LiquidController();
  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: tOnBoardImage1,
        title: tOnBoardingTitle1,
        subTitle: tOnBoardingSubTitle1,
        counterText: tOnBoardingCounter1,
        bgColor: tOnBoardPage1Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: tOnBoardImage2,
        title: tOnBoardingTitle2,
        subTitle: tOnBoardingSubTitle2,
        counterText: tOnBoardingCounter2,
        bgColor: tOnBoardPage2Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: tOnBoardImage3,
        title: tOnBoardingTitle3,
        subTitle: tOnBoardingSubTitle3,
        counterText: tOnBoardingCounter3,
        bgColor: tOnBoardPage3Color,
      ),
    ),
  ];

  onPageChangeCallback(int activePageIndex) => CurrentPage.value = activePageIndex;
  skip() => controller.jumpToPage(page: 2);
  animateToNextSlide(){

    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }
}