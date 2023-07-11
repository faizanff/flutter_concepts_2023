import 'package:flutter/material.dart';
import 'package:flutter_codes/src/constants/colors.dart';
import 'package:flutter_codes/src/constants/image_strings.dart';
import 'package:flutter_codes/src/constants/sizes.dart';
import 'package:flutter_codes/src/constants/text_strings.dart';
import 'package:flutter_codes/src/features/authentication/screens/login_screen/login_screen.dart';
import 'package:flutter_codes/src/features/core/screens/dashboard/dashboard.dart';
import 'package:flutter_codes/src/features/core/screens/profile/update_profile_screen.dart';
import 'package:flutter_codes/src/features/core/screens/profile/user_management.dart';
import 'package:flutter_codes/src/features/core/screens/profile/widgets/profile_menu_widget.dart';
import 'package:flutter_codes/src/repository/authentication_repository/authentication_repository.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.offAll(() => const DashBoard());
          },
          icon: const Icon(LineAwesomeIcons.angle_left),
        ),
        title: Text(
          tProfile,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(
                        image: AssetImage(tProfileScreenImage),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: tPrimaryColor),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            LineAwesomeIcons.alternate_pencil,
                            size: 20,
                          )),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),
              Text(
                tProfileHeading,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                tProfileSubHeading,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Get.offAll(() => const UpdateProfileScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: tPrimaryColor,
                    side: BorderSide.none,
                    shape: const StadiumBorder(),
                  ),
                  child: const Text(
                    tEditProfile,
                    style: TextStyle(color: tDarkColor),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 10),

              //Menu
              ProfileMenuWidget(
                onPress: () {},
                title: tMenu1,
                icon: LineAwesomeIcons.cog,
              ),
              ProfileMenuWidget(
                onPress: () {},
                title: tMenu2,
                icon: LineAwesomeIcons.wallet,
              ),
              ProfileMenuWidget(
                onPress: () {Get.to(() => const UserManagement());},
                title: tMenu3,
                icon: LineAwesomeIcons.user_check,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              ProfileMenuWidget(
                onPress: () {},
                title: tMenu4,
                icon: LineAwesomeIcons.info,
              ),
              ProfileMenuWidget(
                onPress: () {
                  AuthenticationRepository.instance.logout();
                },
                title: tMenu5,
                icon: LineAwesomeIcons.alternate_sign_out,
                endIcon: false,
                textColor: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
