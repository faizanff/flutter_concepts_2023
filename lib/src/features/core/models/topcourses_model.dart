import 'package:flutter/material.dart';
import 'package:flutter_codes/src/constants/image_strings.dart';

class DashboardTopCoursesModel {
  
  final String title;
  final String topImage;
  final String heading;
  final String subHeading;
  
  DashboardTopCoursesModel(this.title,this.topImage,this.heading,this.subHeading);
  
 static List<DashboardTopCoursesModel> list = [
    
    DashboardTopCoursesModel("Flutter Crash Course", tTopCourseImage1, "5 Sections", "30 Lessons"),
    DashboardTopCoursesModel("HTML/CSS Crash Course", tBannerImage1, "4 Sections", "35 Lessons"),
    DashboardTopCoursesModel("Python Crash Course", tTopCourseImage1, "10 Sections", "60 Lessons"),
    DashboardTopCoursesModel("Material Crash Course", tTopCourseImage1, "8 Sections", "45 Lessons"),

  ];
  
}