
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier
{
  var themMode = ThemeMode.light;

  void changeThemeMode(ThemeMode mode)
  {
    themMode = mode;
    notifyListeners();
  }

}