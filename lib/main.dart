import 'package:flutter/material.dart';
import 'package:flutter_provider/Calculator/Calculator.dart';
import 'package:flutter_provider/Configs/Theme.dart';
import 'package:flutter_provider/Page/API.dart';
import 'package:flutter_provider/Page/ApiCallingPage.dart';
import 'package:flutter_provider/Provider/CalculatorProvider.dart';
import 'package:flutter_provider/Provider/ContentProvider.dart';
import 'package:flutter_provider/Provider/SliderProvider.dart';
import 'package:flutter_provider/Provider/myThemeProvider.dart';
import 'package:flutter_provider/Provider/onchangedProvider.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';

import 'Configs/myTheme.dart';
import 'Page/HomePage.dart';
import 'Page/ThemePage.dart';
import 'Provider/ApiPorovider.dart';
import 'Provider/RestApiProvider.dart';
import 'Provider/TestApi.dart';
import 'Provider/ThemeProvider.dart';

void main() {
  runApp(
    MultiProvider(
    providers: [
      ChangeNotifierProvider(create:(_) =>SliderProvider()),
      ChangeNotifierProvider(create:(_) =>ContentProvider()),
      ChangeNotifierProvider(create:(_) =>OnchangeProvider()),
      ChangeNotifierProvider(create:(_) =>ThemeProvider()),
      ChangeNotifierProvider(create:(_) =>myThemeProvider()),
      ChangeNotifierProvider(create:(_) =>ApiProvider()),
      ChangeNotifierProvider(create:(_) =>TestApiProvider()),
      ChangeNotifierProvider(create:(_) =>RestApiProvider()),
    ],
    child:const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      // theme:lightTheme,
      // themeMode:context.watch<ThemeProvider>().themMode,
      // darkTheme:darkTheme,
      theme:LightTheme,
      darkTheme:DarkTheme,
      themeMode:ThemeMode.dark,
      // themeMode:context.watch<myThemeProvider>().themeMode,
      home:const ApiCallingPage(),
    );

      // ChangeNotifierProvider(
      //     create:(context)=>CalculatorProvider(),
      //   child:const Calculator(),
      // ),
  }
}


