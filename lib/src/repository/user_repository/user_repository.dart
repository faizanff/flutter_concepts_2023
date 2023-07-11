import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codes/src/features/authentication/models/user_model.dart';
import 'package:get/get.dart';

// create user Repository to perform database operations

class UserRepository extends GetxController{
  static UserRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  //Store user in FireStore
  createUser(UserModel user) async {
    await _db.collection("Users").add(user.toJson()).whenComplete(() => Get.snackbar("Success", "Please Enter OTP to verify your account.",snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.green.withOpacity(0.1),colorText: Colors.green)
    )
        .catchError((error, stackTrace)
        {
          Get.snackbar("Error", "Something went wrong. Try again",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.redAccent.withOpacity(0.1),
            colorText: Colors.red);
          print(error.toString());
        }
    );
  }


  //Step 2 - Fetch All users or user details
  Future<UserModel> getUserDetails(String email) async {
    final snapshot = await _db.collection("Users").where("Email", isEqualTo: email).get();
    final userData = snapshot.docs.map((e) => UserModel.fromSnapshot(e)).single;
    return userData;
}

  Future<List<UserModel>> allUserDetails() async {
    final snapshot = await _db.collection("Users").get();
    final userData = snapshot.docs.map((e) => UserModel.fromSnapshot(e)).toList();
    return userData;
  }

}