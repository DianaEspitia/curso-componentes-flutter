import 'package:flutter/material.dart';

class AppTheme{
  static const primaryColor = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        primaryColor: primaryColor, //Color primario - no aplica para el AppBar
        appBarTheme: const AppBarTheme(
          color: primaryColor,
          elevation: 0,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: primaryColor
          )),
      );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
        primaryColor: primaryColor, //Color primario - no aplica para el AppBar
        appBarTheme: const AppBarTheme(
          color: primaryColor,
          elevation: 0,
        ),
        scaffoldBackgroundColor: Colors.black,
      );
}