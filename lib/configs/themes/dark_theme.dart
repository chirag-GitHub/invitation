import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'themes.dart';

ThemeData darkTheme = ThemeData.dark().copyWith(
  primaryColor: ThemeColor.primaryDarkColor,
  scaffoldBackgroundColor: ThemeColor.scaffoldDarkColor,
  cardColor: ThemeColor.surfaceDarkColor,
  cardTheme: CardTheme(color: ThemeColor.surfaceDarkColor),
  appBarTheme: AppBarTheme(
    backgroundColor: ThemeColor.primaryDarkColor,
    elevation: 0,
    centerTitle: true,
    toolbarTextStyle: GoogleFonts.roboto(
        color: ThemeColor.whiteColor, fontWeight: FontWeight.w500),
    titleTextStyle: GoogleFonts.roboto(
      color: ThemeColor.whiteColor,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    iconTheme: const IconThemeData(
      color: ThemeColor.whiteColor,
    ),
    systemOverlayStyle: const SystemUiOverlayStyle(
        systemNavigationBarColor: ThemeColor.blackColor,
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ThemeColor.scaffoldLightColor, elevation: 5),
  textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.white),
  dividerColor: ThemeColor.dividerDarkColor,
  dividerTheme: DividerThemeData(color: ThemeColor.dividerDarkColor),
  textTheme: ThemeData.dark().textTheme.copyWith(
        displayLarge: GoogleFonts.roboto(
          color: ThemeColor.whiteColor,
          fontWeight: FontWeight.w800,
          fontSize: 30,
        ),
        displayMedium: GoogleFonts.roboto(
          color: ThemeColor.whiteColor,
          fontWeight: FontWeight.w800,
          fontSize: 28,
        ),
        displaySmall: GoogleFonts.roboto(
          color: ThemeColor.whiteColor,
          fontWeight: FontWeight.w800,
          fontSize: 26,
        ),
        headlineLarge: GoogleFonts.roboto(
          color: ThemeColor.whiteColor,
          fontWeight: FontWeight.w700,
          fontSize: 26,
        ),
        headlineMedium: GoogleFonts.roboto(
          color: ThemeColor.whiteColor,
          fontWeight: FontWeight.w700,
          fontSize: 24,
        ),
        headlineSmall: GoogleFonts.roboto(
          color: ThemeColor.whiteColor,
          fontWeight: FontWeight.w700,
          fontSize: 22,
        ),
        titleLarge: GoogleFonts.roboto(
          color: ThemeColor.whiteColor,
          fontWeight: FontWeight.w600,
          fontSize: 22,
        ),
        titleMedium: GoogleFonts.roboto(
          color: ThemeColor.whiteColor,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
        titleSmall: GoogleFonts.roboto(
          color: ThemeColor.whiteColor,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
        labelLarge: GoogleFonts.roboto(
          color: ThemeColor.whiteColor,
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
        labelMedium: GoogleFonts.roboto(
          color: ThemeColor.whiteColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        labelSmall: GoogleFonts.roboto(
          color: ThemeColor.whiteColor,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
        bodyLarge: GoogleFonts.roboto(
          color: ThemeColor.whiteColor,
          fontWeight: FontWeight.w400,
          fontSize: 18,
        ),
        bodyMedium: GoogleFonts.roboto(
          color: ThemeColor.whiteColor,
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
        bodySmall: GoogleFonts.roboto(
          color: ThemeColor.whiteColor,
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
      ),
  radioTheme: RadioThemeData(
    fillColor:
        WidgetStateColor.resolveWith((states) => Colors.white.withValues(alpha: .3)),
  ),
  colorScheme: const ColorScheme.dark().copyWith(
    secondary: const Color(0xffa1a1a1),
    primary: ThemeColor.primaryLightColor,
    onPrimary: ThemeColor.blackColor,
    outline: ThemeColor.accentLightColor,
    onSurface: ThemeColor.whiteColor,
    surface: ThemeColor.surfaceDarkColor,
    primaryContainer: ThemeColor.blackColor,
    onPrimaryContainer: const Color(0xff3d3c3c),
    error: ThemeColor.errorColor,
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
      linearTrackColor: Colors.white, color: ThemeColor.primaryDarkColor),
);
