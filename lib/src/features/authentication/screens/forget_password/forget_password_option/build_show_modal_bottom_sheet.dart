import 'package:flutter/material.dart';
import 'package:flutter_codes/src/constants/sizes.dart';
import 'package:flutter_codes/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail_screen.dart';
import 'package:flutter_codes/src/features/authentication/screens/forget_password/forget_password_option/forget_password_btn_widget.dart';
import 'package:flutter_codes/src/features/authentication/screens/forget_password/forget_password_phone/forget_password_phone_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../constants/text_strings.dart';

class ForgetPasswordScreen {

  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
      builder: (context) => Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(tForgetPasswordTitle,style: Theme.of(context).textTheme.displayMedium,),
            Text(tForgetPasswordSubTitle,style: Theme.of(context).textTheme.bodyMedium,),
            const SizedBox(height: 30.0,),
            ForgetPasswordBtnWidget(
              title: tEmail,
              subTitle: tResetViaEmail,
              btnIcon: Icons.mail_outline_rounded,
              onTap: (){
                Navigator.pop(context);
                Get.to(const ForgetPasswordMailScreen());},
            ),
            const SizedBox(height: tFormHeight,),
            ForgetPasswordBtnWidget(
              title: tPhoneNumber,
              subTitle: tResetViaPhone,
              btnIcon: Icons.mobile_friendly_rounded,
              onTap: (){Get.to(const ForgetPasswordPhoneScreen());},
            ),
          ],
        ),
      ),
    );
  }
}