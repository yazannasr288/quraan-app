import 'package:flutter/material.dart';

import 'appcolors.dart';

class Mytheam {
  static final ThemeData lightmode = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Appcolors.primarycolor,
      brightness: Brightness.light,
    ),
    primaryColor: Appcolors.primarycolor,
    canvasColor: Appcolors.primarycolor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: Appcolors.blackcolor,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        color: Appcolors.blackcolor,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
      bodySmall: TextStyle(
        color: Appcolors.blackcolor,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
        color: Appcolors.blackcolor,
        fontSize: 35,
        fontWeight: FontWeight.w900,
      ),
      titleMedium: TextStyle(
        color: Appcolors.primarycolor,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
