// ignore_for_file: unnecessary_getters_setters

import 'package:flutter/cupertino.dart';
import 'package:write_a_day/logic/dark_theme_preference.dart';

class DarkThemeProvider with ChangeNotifier {
  DarkThemePreference darkThemePreference = DarkThemePreference();
  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    darkThemePreference.setDarkTheme(value);
    notifyListeners();
    // this causes UI to update if 'provider' is attached to the screen
  }
}
