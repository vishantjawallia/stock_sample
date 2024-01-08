// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';

import 'palettes.dart';

class CustomTextTheme {
  static final ThemeData light = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: Palettes.white,
    primaryIconTheme: const IconThemeData(color: Colors.white),
    primaryColorDark: Palettes.primary,
    textTheme: const TextTheme(
      headlineLarge: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Palettes.textColor),
      headlineMedium: TextStyle(fontSize: 24, color: Palettes.textColor),
      headlineSmall: TextStyle(fontSize: 23, color: Palettes.textColor),
      displayLarge: TextStyle(fontSize: 21, fontWeight: FontWeight.w500, color: Palettes.textColor),
      displayMedium: TextStyle(fontSize: 20, color: Palettes.textColor),
      displaySmall: TextStyle(fontSize: 19, color: Palettes.textColor),
      titleLarge: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Palettes.textColor),
      titleMedium: TextStyle(fontSize: 16, color: Palettes.textColor),
      titleSmall: TextStyle(fontSize: 15, color: Palettes.textColor),
      bodyLarge: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Palettes.textColor),
      bodyMedium: TextStyle(fontSize: 12, color: Palettes.textColor),
      bodySmall: TextStyle(fontSize: 11, color: Palettes.textColor),
      labelLarge: TextStyle(fontSize: 9, fontWeight: FontWeight.w500, color: Palettes.textColor),
      labelMedium: TextStyle(fontSize: 8, color: Palettes.textColor),
      labelSmall: TextStyle(fontSize: 7, color: Palettes.textColor),
    ),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.lightBlue).copyWith(secondary: Palettes.primary),
  );
}
