import 'package:flutter/material.dart';
import 'package:flutter_provider/Calculator/Calculator.dart';
import 'package:flutter_provider/Configs/Theme.dart';
import 'package:flutter_provider/Provider/ThemeProvider.dart';
import 'package:provider/provider.dart';

class ThemeExample extends StatelessWidget {
  const ThemeExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Consumer<ThemeProvider>(builder:(ctx,_,__) {
           return  ctx.read<ThemeProvider>().themMode == ThemeMode.light ?
           IconButton(onPressed:(){
             ctx.read<ThemeProvider>().changeThemeMode(ThemeMode.dark);
           }, icon:const Icon(Icons.mood))
               : IconButton(onPressed:(){
             ctx.read<ThemeProvider>().changeThemeMode(ThemeMode.light);
           }, icon:const Icon(Icons.mood_bad_outlined));
         }),
      ],
    );
  }
}
