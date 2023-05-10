// ignore_for_file: avoid_classes_with_only_static_members, avoid_redundant_argument_values, lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './text_theme.dart';
import '../shared/index.dart';

class MyTheme {
  static ThemeData light = ThemeData(
    fontFamily: "Montserrat",
    primaryColor: primary,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: secondary,
    ),
    navigationBarTheme: const NavigationBarThemeData(
      indicatorColor: Colors.transparent,
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      elevation: 8.0,
    ),
  );
}
