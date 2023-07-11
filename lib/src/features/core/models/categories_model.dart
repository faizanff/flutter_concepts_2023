import 'package:flutter/material.dart';
import 'package:flutter_codes/src/features/authentication/screens/login_screen/login_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DashboardCategoriesModel {

  final String title;
  final String heading;
  final String subheading;
  final VoidCallback? onPress;
  DashboardCategoriesModel(this.title,this.heading,this.subheading,this.onPress);


  static List<DashboardCategoriesModel> list = [
    DashboardCategoriesModel("JS", "Java Script", "10 Lessons", null,),
    DashboardCategoriesModel("F", "Flutter", "11 Lessons", null),
    DashboardCategoriesModel("H", "HTML", "8 Lessons", null),
    DashboardCategoriesModel("K", "Kotlin", "20 Lessons", null),
    DashboardCategoriesModel("P", "Python", "100 Lessons", null),
];
}