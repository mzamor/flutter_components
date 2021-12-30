

import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // primary color
    primaryColor: Colors.indigo,

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),

    // TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary),
    ),

      // FloatingActionButton Theme
      floatingActionButtonTheme : const FloatingActionButtonThemeData(
        backgroundColor: primary,
      ),

    // ElevetedButton Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: Colors.indigo,
          shape: const StadiumBorder(),
          elevation: 0,
        )
        ),

    // InputDecoration Theme
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomLeft: Radius.circular(10))
      ),

      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomLeft: Radius.circular(10))
      ),

      border: OutlineInputBorder(
          borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomLeft: Radius.circular(10))
    ),),
  );



}