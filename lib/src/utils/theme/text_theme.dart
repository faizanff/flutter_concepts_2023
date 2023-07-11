import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';

class TTextTheme {

  TTextTheme._();  //To avoid creating instances

  // --------- FOR LIGHT THEME ----------

  static TextTheme lightTextTheme = TextTheme(
    displayLarge: GoogleFonts.montserrat(fontSize: 28.0,fontWeight: FontWeight.bold, color: tDarkColor), //headline 1
    displayMedium: GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.w700,color: tDarkColor,), //headline 2
    displaySmall: GoogleFonts.poppins(fontSize: 24.0, fontWeight: FontWeight.w700,color: tDarkColor), //headline 3
    headlineMedium: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w700,color: tDarkColor), //headline 4
    titleLarge: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.w700,color: tDarkColor), //headline 6
    bodyLarge: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal,color: tDarkColor), //body text 1
    bodyMedium: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal,color: tDarkColor), //body text 2

  );

  // ---------- FOR DARK THEME ---------

  static TextTheme darkTextTheme = TextTheme(
    displayLarge: GoogleFonts.montserrat(fontSize: 28.0,fontWeight: FontWeight.bold, color: tWhiteColor), //headline 1
    displayMedium: GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.w700,color: tWhiteColor,), //headline 2
    displaySmall: GoogleFonts.poppins(fontSize: 24.0, fontWeight: FontWeight.w700,color: tWhiteColor), //headline 3
    headlineMedium: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w600,color: tWhiteColor), //headline 4
    titleLarge: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.w700,color: tWhiteColor), //headline 6
    bodyLarge: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal,color: tWhiteColor), //body text 1
    bodyMedium: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal,color: tWhiteColor), //body text 2
  );
}
