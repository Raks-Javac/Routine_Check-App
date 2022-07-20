//this file contains the text styling to be used throughh out the app [typography]
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'res.dart';

class TextStyles {
  static TextStyle headline1 = GoogleFonts.heebo(
    fontSize: 60,
    fontWeight: FontWeight.w400,
    color: RoutineCheckAppColors.black,
    height: 1.4,
  );

  static TextStyle headline2 = GoogleFonts.heebo(
    fontSize: 48,
    fontWeight: FontWeight.w400,
    color: RoutineCheckAppColors.black,
    height: 1.4,
  );

  static TextStyle headline3 = GoogleFonts.heebo(
    fontSize: 34,
    fontWeight: FontWeight.w400,
    color: RoutineCheckAppColors.black,
    height: 1.4,
  );

  static TextStyle headline4 = GoogleFonts.heebo(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: RoutineCheckAppColors.black,
    height: 1.4,
  );

  static TextStyle body = GoogleFonts.heebo(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color:RoutineCheckAppColors.black,
    height: 1.4,
  );

  static TextStyle subtitle = GoogleFonts.heebo(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: RoutineCheckAppColors.black,
    height: 1.4,
  );
}
