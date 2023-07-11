import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UserModel{

  final String? id;
  final String fullName;
  final String email;
  final String phoneNo;
  final String password;

  const UserModel({
    this.id,
    required this.fullName,
    required this.email,
    required this.phoneNo,
    required this.password,
});

  toJson(){
    return{
      "Email": email,
      "FullName" : fullName,
      "Password" : password,
      "PhoneNo" : phoneNo,
    };
    }

    factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document){
    final data = document.data()!;
    return UserModel(
        id: document.id,
        email: data["Email"],
        fullName: data["FullName"],
        password: data["Password"],
        phoneNo: data["PhoneNo"],
    );
    }
  }
