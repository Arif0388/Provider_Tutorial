import 'package:flutter/material.dart';

import 'myColors.dart';

var LightTheme = ThemeData(
useMaterial3:true,
  brightness:Brightness.light,
  colorScheme:ColorScheme.light(
    surface:LightBgColor,
    onSurface:LightFontColor,
    primaryContainer:LightContainer,
    primary:LightPrimary
  ),
);

var DarkTheme = ThemeData(
useMaterial3:true,
  brightness:Brightness.dark,
  colorScheme:ColorScheme.dark(
    surface:DarkBgColor,
    onSurface:DarkFontColor,
    primaryContainer:DarkContainer,
    primary:DarkPrimary
  ),
);