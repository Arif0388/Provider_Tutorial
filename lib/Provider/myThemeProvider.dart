import 'package:flutter/material.dart';

class myThemeProvider extends ChangeNotifier
{
  var themeMode = ThemeMode.light;

  void themeChange(ThemeMode mode)
  {
    themeMode = mode;
    notifyListeners();
  }

}