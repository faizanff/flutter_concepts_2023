import 'package:flutter/material.dart';
import 'package:flutter_codes/src/features/authentication/models/user_model.dart';
import 'package:flutter_codes/src/features/core/screens/dashboard/dashboard.dart';
import 'package:flutter_codes/src/repository/user_repository/user_repository.dart';
import 'package:get/get.dart';

import '../../../repository/authentication_repository/authentication_repository.dart';
import '../screens/forget_password/forget_password_otp/otp_screen.dart';

class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();

  //TextField controllers to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  final userRepo = Get.put(UserRepository());

  void registerUser(String email, String password){

    String? error = AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password) as String?;
    if(error != null){
      Get.showSnackbar(GetSnackBar(message: error.toString()));
    }
  }

  void loginUser(String email,String password){

    AuthenticationRepository.instance.loginUserWithEmailAndPassword(email, password);
  }

  void phoneAuthentication(String phoneNo){
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }

 Future<void> createUser(UserModel user) async {
     await userRepo.createUser(user);
    // phoneAuthentication(user.phoneNo);
    // Get.to(() => const OtpScreen());
 }

}