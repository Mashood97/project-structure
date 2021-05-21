import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onlydesign/utils/constant/constant.dart';
import 'package:onlydesign/utils/transitions/page_transitions.dart';

final kLightTheme = ThemeData(
  primaryColor: Colors.amber,
  accentColor: Colors.pink,
  canvasColor: kWhiteColor,
  textTheme: TextTheme(
    headline6: GoogleFonts.poppins(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: kBlackColor,
    ),
    headline5: GoogleFonts.poppins(
      fontSize: 22.0,
      fontWeight: FontWeight.w600,
      color: kBlackColor,
    ),
    headline4: GoogleFonts.poppins(
      fontSize: 24.0,
      fontWeight: FontWeight.w800,
      color: kBlackColor,
    ),
    caption: GoogleFonts.poppins(
      fontSize: 30.0,
      fontWeight: FontWeight.w800,
      color: kBlackColor,
    ),
  ),

  pageTransitionsTheme: PageTransitionsTheme(builders: {
    TargetPlatform.android: buildCustomPageTransition(),
    TargetPlatform.iOS: buildCustomPageTransition(),
    TargetPlatform.windows: buildCustomPageTransition(),
  }),

);
