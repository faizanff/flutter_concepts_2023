import 'package:flutter/material.dart';
import 'package:flutter_codes/src/constants/colors.dart';
import 'package:flutter_codes/src/constants/text_strings.dart';

class TTextFormFieldTheme {

  TTextFormFieldTheme._();

  static  InputDecorationTheme lightInputDecorationTheme =    InputDecorationTheme(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
    prefixIconColor:  tSecondaryColor,
    labelStyle: const TextStyle(color: tSecondaryColor),
    floatingLabelStyle: const TextStyle(color: tSecondaryColor),
    focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(100),borderSide: const BorderSide(width: 2.0, color: tSecondaryColor)),
  );

  static InputDecorationTheme darkInputDecorationTheme =  InputDecorationTheme(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
    prefixIconColor:  tPrimaryColor,
    labelStyle: const TextStyle(color: tPrimaryColor),
    floatingLabelStyle: const TextStyle(color: tPrimaryColor),
    focusedBorder:  OutlineInputBorder( borderRadius: BorderRadius.circular(100),borderSide:const BorderSide(width: 2.0, color: tPrimaryColor)),
  );
}