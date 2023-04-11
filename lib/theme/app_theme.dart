import 'package:flutter/material.dart';
import 'package:food_app/widgets/appBar/theme.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

final appTheme = ThemeData.from(
  colorScheme: _appColorScheme,
  textTheme: _appTextTheme,
  // appBarTheme: appbartheme
).copyWith(cardTheme: const CardTheme());

const ColorScheme _appColorScheme = ColorScheme.light(
  primary: Color(0xFF1D1D1D),
  primaryContainer: Color(0xFF1D1D1D),
  onPrimary: Colors.white,
  secondary: Color(0xFF5991FF),
  secondaryContainer: Color(0x0f1E1E1E),
  // background: Color(0xFFF7F8FA),
  background: Colors.black,
  surface: Color(0XFFE9453F),
  error: Color(0xFFDE440C),
  onBackground: Colors.white,
  // onBackground: Colors.black,
  onError: Colors.white,
  brightness: Brightness.light,
);

final TextTheme _appTextTheme = TextTheme(
  headlineLarge: GoogleFonts.passionOne(
    fontSize: 24.21,
    fontWeight: FontWeight.w400,
  ),
  titleLarge: GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  ),
  titleMedium: GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  ),
  titleSmall: GoogleFonts.poppins(
    fontSize: 10,
    fontWeight: FontWeight.w600,
  ),

  // headline4: GoogleFonts.staatliches(
  //   fontSize: 20,
  //   fontWeight: FontWeight.w400,
  // ),
  // button: GoogleFonts.firaSans(
  //   fontSize: 14,
  //   fontWeight: FontWeight.w600,
  // ),
  // headline5: GoogleFonts.firaSans(
  //   fontSize: 17,
  //   fontWeight: FontWeight.w400,
  // ),
);

extension CustomStyles on TextTheme {
  TextStyle get bodyBigSemibold => GoogleFonts.firaSans(
        fontWeight: FontWeight.w600,
        fontSize: 20,
      );

  TextStyle get bodySemibold => GoogleFonts.firaSans(
        fontWeight: FontWeight.w600,
        fontSize: 16,
      );

  TextStyle get textMediumSemibold => GoogleFonts.firaSans(
        fontWeight: FontWeight.w600,
        fontSize: 14,
      );

  TextStyle get textSmallSemibold => GoogleFonts.firaSans(
        fontWeight: FontWeight.w600,
        fontSize: 13,
      );

  TextStyle get navBarTextSemibold => GoogleFonts.firaSans(
        fontWeight: FontWeight.w600,
        fontSize: 12,
      );

  TextStyle get bodyBigRegular => GoogleFonts.firaSans(
        fontWeight: FontWeight.w400,
        fontSize: 20,
      );

  TextStyle get bodyRegular => GoogleFonts.firaSans(
        fontWeight: FontWeight.w400,
        fontSize: 16,
      );

  TextStyle get textMediumRegular => GoogleFonts.firaSans(
        fontWeight: FontWeight.w400,
        fontSize: 14,
      );

  TextStyle get textSmallRegular => GoogleFonts.firaSans(
        fontWeight: FontWeight.w400,
        fontSize: 13,
      );

  TextStyle get navBarTextRegular => GoogleFonts.firaSans(
        fontWeight: FontWeight.w400,
        fontSize: 12,
      );

  TextStyle get ticketsLocationText => GoogleFonts.firaSans(
        fontWeight: FontWeight.w400,
        fontSize: 17,
      );
}
