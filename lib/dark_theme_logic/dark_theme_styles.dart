import 'dart:ui';
import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      primarySwatch: isDarkTheme ? Colors.red : Colors.purple,
      primaryColor: isDarkTheme ? Colors.black : Colors.white,
      fontFamily: 'Poppins',
      textTheme: TextTheme(
        // diary entry title text
        headline1: TextStyle(
          color: isDarkTheme ? Colors.white : Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),

        // diary entry body text
        bodyText1: TextStyle(
          color: isDarkTheme ? Colors.white : Colors.black,
          fontSize: 15,
          overflow: TextOverflow.ellipsis,
        ),

        // date text style
        bodyText2: TextStyle(
          color: isDarkTheme ? Colors.white70 : Colors.grey[700],
          fontSize: 10,
        ),
      ),
      // typography: Typography
      backgroundColor:
          isDarkTheme ? const Color(0xff222222) : const Color(0xffEFEEF3),
      indicatorColor:
          isDarkTheme ? const Color(0xff0E1D36) : const Color(0xffCBDCF8),
      hintColor:
          isDarkTheme ? const Color(0xff280C0B) : const Color(0xffEECED3),
      highlightColor:
          isDarkTheme ? const Color(0xff372901) : const Color(0xffFCE192),
      hoverColor:
          isDarkTheme ? const Color(0xff3A3A3B) : const Color(0xff4285F4),
      focusColor:
          isDarkTheme ? const Color(0xff0B2512) : const Color(0xffA8DAB5),
      disabledColor: Colors.grey,
      cardColor: isDarkTheme ? const Color(0xff151515) : Colors.white,
      canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
            colorScheme: isDarkTheme
                ? const ColorScheme.dark()
                : const ColorScheme.light(),
          ),
      appBarTheme: const AppBarTheme(
        elevation: 5.0,
      ),
    );
  }
}
