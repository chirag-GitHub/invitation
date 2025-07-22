import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotanic/configs/config.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  primaryColor: ThemeColor.primaryLightColor,
  scaffoldBackgroundColor: ThemeColor.scaffoldLightColor,
  appBarTheme: AppBarTheme(
    backgroundColor: ThemeColor.primaryLightColor,
    elevation: 0,
    centerTitle: true,
    toolbarTextStyle: GoogleFonts.roboto(
      color: ThemeColor.whiteColor,
      fontWeight: FontWeight.w500,
    ),
    titleTextStyle: GoogleFonts.roboto(
      color: ThemeColor.whiteColor,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    iconTheme: const IconThemeData(
      color: ThemeColor.blackColor,
    ),
    systemOverlayStyle: const SystemUiOverlayStyle(
        systemNavigationBarColor: ThemeColor.whiteColor,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.light),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ThemeColor.scaffoldLightColor, elevation: 5),
  dividerColor: ThemeColor.dividerLightColor,
  dividerTheme: DividerThemeData(color: ThemeColor.dividerLightColor),
  cardColor: ThemeColor.surfaceLightColor,
  cardTheme: CardTheme(color: ThemeColor.surfaceLightColor),
  colorScheme: ThemeData.light().colorScheme.copyWith(
        secondary: const Color(0xffa1a1a1),
        primary: ThemeColor.primaryLightColor,
        onPrimary: ThemeColor.whiteColor,
        outline: ThemeColor.accentLightColor,
        onSurface: ThemeColor.blackColor,
        surface: ThemeColor.surfaceLightColor,
        primaryContainer: ThemeColor.whiteColor,
        onPrimaryContainer: const Color(0xffd8d8da),
        error: ThemeColor.errorColor,
      ),
  // textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.black),
  listTileTheme: ListTileThemeData(
    tileColor: ThemeColor.primaryLightColor,
    dense: true,
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
      linearTrackColor: Color(0xffECEAEA), color: ThemeColor.primaryLightColor),
  radioTheme: RadioThemeData(
    fillColor: WidgetStateColor.resolveWith(
      (states) => Colors.black.withValues(alpha: 0.4),
    ),
  ),
  textTheme: ThemeData.light().textTheme.copyWith(
        displayLarge: GoogleFonts.roboto(
          color: ThemeColor.blackColor,
          fontWeight: FontWeight.w800,
          fontSize: 30,
        ),
        displayMedium: GoogleFonts.roboto(
          color: ThemeColor.blackColor,
          fontWeight: FontWeight.w800,
          fontSize: 28,
        ),
        displaySmall: GoogleFonts.roboto(
          color: ThemeColor.blackColor,
          fontWeight: FontWeight.w800,
          fontSize: 26,
        ),
        headlineLarge: GoogleFonts.roboto(
          color: ThemeColor.blackColor,
          fontWeight: FontWeight.w700,
          fontSize: 26,
        ),
        headlineMedium: GoogleFonts.roboto(
          color: ThemeColor.blackColor,
          fontWeight: FontWeight.w700,
          fontSize: 24,
        ),
        headlineSmall: GoogleFonts.roboto(
          color: ThemeColor.blackColor,
          fontWeight: FontWeight.w700,
          fontSize: 22,
        ),
        titleLarge: GoogleFonts.roboto(
          color: ThemeColor.blackColor,
          fontWeight: FontWeight.w600,
          fontSize: 22,
        ),
        titleMedium: GoogleFonts.roboto(
          color: ThemeColor.blackColor,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
        titleSmall: GoogleFonts.roboto(
          color: ThemeColor.blackColor,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
        labelLarge: GoogleFonts.roboto(
          color: ThemeColor.blackColor,
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
        labelMedium: GoogleFonts.roboto(
          color: ThemeColor.blackColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        labelSmall: GoogleFonts.roboto(
          color: ThemeColor.blackColor,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
        bodyLarge: GoogleFonts.roboto(
          color: ThemeColor.blackColor,
          fontWeight: FontWeight.w400,
          fontSize: 18,
        ),
        bodyMedium: GoogleFonts.roboto(
          color: ThemeColor.blackColor,
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
        bodySmall: GoogleFonts.roboto(
          color: ThemeColor.blackColor,
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
      ),
);
