import 'package:flutter/material.dart';
import 'package:flutter_codes/src/constants/colors.dart';
import 'package:flutter_codes/src/constants/image_strings.dart';
import 'package:flutter_codes/src/constants/sizes.dart';
import 'package:flutter_codes/src/constants/text_strings.dart';
import 'package:flutter_codes/src/features/authentication/controllers/profile_controller.dart';
import 'package:flutter_codes/src/features/authentication/models/user_model.dart';
import 'package:flutter_codes/src/features/core/screens/profile/profile_screen.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.offAll(() => const ProfileScreen()),
          icon: const Icon(LineAwesomeIcons.angle_left),
        ),
        title: Text(
          tEditProfile,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: FutureBuilder(
            future: controller.getUserData(),
            builder: (context, snapshot) {
              if(snapshot.connectionState == ConnectionState.done){
                if(snapshot.hasData){
                  UserModel userData = snapshot.data as UserModel;
                  return Column( //step 4 -  wrap this widget with FutureBuilder
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
                                    LineAwesomeIcons.camera,
                                    size: 20,
                                  )),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      //header portion ends here

                      Form(
                        child: Column(
                          children: [
                            TextFormField(
                              initialValue: userData.fullName,
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
                              initialValue: userData.email,
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
                              initialValue: userData.phoneNo,
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
                              initialValue: userData.password,
                              decoration: const InputDecoration(
                                label: Text(tPassword),
                                prefixIcon: Icon(Icons.fingerprint),
                                hintText: tPassword,
                              ),
                            ),
                            const SizedBox(
                              height: tFormHeight + 20,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: tPrimaryColor,
                                    side: BorderSide.none,
                                    elevation: 0,
                                    shape: const StadiumBorder(),
                                  ),
                                  child: const Text(
                                    tUpdate,
                                    style: TextStyle(color: tDarkColor),
                                  )),
                            ),
                            const SizedBox(height: tFormHeight + 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text.rich(
                                  TextSpan(
                                    text: tJoined,
                                    style: TextStyle(fontSize: 12),
                                    children: [
                                      TextSpan(
                                          text: tJoinedAt,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12))
                                    ],
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.redAccent.withOpacity(0.1),
                                    elevation: 0,
                                    side: BorderSide.none,
                                    shape: const StadiumBorder(),
                                    foregroundColor: Colors.red,
                                  ),
                                  child: const Text(
                                    tDelete,
                                  ),),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                }
                else if (snapshot.hasError) {
                  return Center(child: Text(snapshot.error.toString()));
                }
                else{
                  return const Center(child: Text("Something went wrong"));
                }
              } else{
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
    );
  }
}
