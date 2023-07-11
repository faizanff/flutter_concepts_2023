import 'package:flutter/material.dart';
import 'package:flutter_codes/src/constants/colors.dart';
import 'package:flutter_codes/src/constants/image_strings.dart';
import 'package:flutter_codes/src/constants/text_strings.dart';
import 'package:flutter_codes/src/features/core/screens/profile/profile_screen.dart';
import 'package:flutter_codes/src/repository/authentication_repository/authentication_repository.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(
        Icons.menu,
        color: Colors.black,
      ),
      title: Text(
        tAppName,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20, top: 7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: tCardBgColor,
          ),
          child: IconButton(
              onPressed: () {
                // AuthenticationRepository.instance.logout();
                Get.offAll(() => const ProfileScreen());
              },
              icon: const Image(
                image: AssetImage(tUserProfileImage),
              )),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}