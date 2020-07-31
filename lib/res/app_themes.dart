import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static const Color primaryColor = Color(0xFF191919);

  static final TextTheme textTheme = TextTheme(
    headline1: GoogleFonts.teko(
        fontSize: 104, fontWeight: FontWeight.w300, letterSpacing: -1.5),
    headline2: GoogleFonts.teko(
        fontSize: 65, fontWeight: FontWeight.w300, letterSpacing: -0.5),
    headline3: GoogleFonts.teko(fontSize: 52, fontWeight: FontWeight.w400),
    headline4: GoogleFonts.teko(
        fontSize: 37, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    headline5: GoogleFonts.teko(fontSize: 26, fontWeight: FontWeight.w400),
    headline6: GoogleFonts.teko(
        fontSize: 22, fontWeight: FontWeight.w500, letterSpacing: 0.15),
    subtitle1: GoogleFonts.teko(
        fontSize: 17, fontWeight: FontWeight.w400, letterSpacing: 0.15),
    subtitle2: GoogleFonts.teko(
        fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 0.1),
    bodyText1: GoogleFonts.nunito(
        fontSize: 17, fontWeight: FontWeight.w400, letterSpacing: 0.5),
    bodyText2: GoogleFonts.nunito(
        fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    button: GoogleFonts.nunito(
        fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 1.25),
    caption: GoogleFonts.nunito(
        fontSize: 13, fontWeight: FontWeight.w400, letterSpacing: 0.4),
    overline: GoogleFonts.nunito(
        fontSize: 11, fontWeight: FontWeight.w400, letterSpacing: 1.5),
  );
}
