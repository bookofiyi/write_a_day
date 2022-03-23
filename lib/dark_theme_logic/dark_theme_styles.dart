import 'dart:ui';
import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      primarySwatch: Colors.red,
      primaryColor: isDarkTheme ? Colors.black : Colors.white,
      backgroundColor: isDarkTheme ? Colors.black : const Color(0xFFF1F5FB),
      // indicatorColor: isDarkTheme ?
      // buttonColor:
      // hintColor:
      // highlightColor:
      appBarTheme: const AppBarTheme(
        elevation: 0.0,
      ),
    );
  }
}
