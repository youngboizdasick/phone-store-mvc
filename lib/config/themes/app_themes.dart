import 'package:flutter/material.dart';
import '../../core/constants/constants.dart';
import 'app_pallete.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme() {
  return ThemeData(
    fontFamily: GoogleFonts.openSans().fontFamily,
    appBarTheme: _appBarTheme(),
    inputDecorationTheme: _inputDecorationTheme(),
  );
}

AppBarTheme _appBarTheme() {
  return const AppBarTheme(
    color: AppPallete.whiteColor,
    elevation: 0,
    titleSpacing: 0,
    centerTitle: true,
    iconTheme: IconThemeData(color: AppPallete.blackColor),
    titleTextStyle: TextStyle(
      color: AppPallete.blackColor,
      fontSize: headerFontSize,
    ),
  );
}

InputDecorationTheme _inputDecorationTheme() {
  return InputDecorationTheme(
    filled: true,
    fillColor: AppPallete.whiteColor,
    contentPadding:
        const EdgeInsets.symmetric(horizontal: elementSpacing),
    enabledBorder: _border(AppPallete.blackColor),
    focusedBorder: _border(AppPallete.btnColor),
  );
}

OutlineInputBorder _border(Color? color) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: color ?? AppPallete.background),
    borderRadius: BorderRadius.circular(radius),
  );
}
