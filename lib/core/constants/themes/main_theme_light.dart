import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_app/core/constants/colors/main_colors_light.dart';

class MainThemeLight {
  static ThemeData lightTheme = ThemeData(
    primaryColor: MainColorsLight.primaryBlue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      shadowColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.w600, color: Colors.black, fontSize: 14.sp),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: MainColorsLight.primaryBlue,
      textTheme: ButtonTextTheme.primary,
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.poppins(
          color: MainColorsLight.textDisplay,
          fontSize: 30.sp,
          fontWeight: FontWeight.bold),
      displayMedium:
          GoogleFonts.poppins(color: MainColorsLight.textBody, fontSize: 24.sp),
      bodyLarge:
          GoogleFonts.poppins(color: MainColorsLight.textBody, fontSize: 16.sp),
      bodyMedium:
          GoogleFonts.poppins(color: MainColorsLight.iconHint, fontSize: 14.sp),
      bodySmall:
          GoogleFonts.poppins(color: MainColorsLight.textHint, fontSize: 12.sp),
      labelMedium: GoogleFonts.poppins(color: Colors.white),
    ),
    iconTheme: IconThemeData(
      color: MainColorsLight.iconHint,
    ),
    disabledColor: MainColorsLight.disabledColor,
  );
}
