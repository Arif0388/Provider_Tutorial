import 'package:flutter/material.dart';
import 'package:flutter_provider/Provider/myThemeProvider.dart';
import 'package:provider/provider.dart';

class ThemePage extends StatelessWidget {
  const ThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.blueGrey,
        centerTitle:true,
        title:const Text('Theme'),
      ),
      body:Center(
        child:Consumer<myThemeProvider>(
            builder:(ctx,_,__) {
              return ctx.read<myThemeProvider>().themeMode == ThemeMode.light ?
                  InkWell(
                    splashColor:Colors.transparent,
                    onTap:(){
                      ctx.read<myThemeProvider>().themeChange(ThemeMode.dark);
                    },
                    child: Container(
                      width:100,
                      height:50,
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(15),
                        color:Colors.blue,
                      ),
                      child:const Center(child: Text('Dark',style:TextStyle(color:Colors.white,fontSize:12,fontWeight:FontWeight.bold))),
                    ),
                  )
                  :
              InkWell(
                splashColor:Colors.transparent,
                onTap:(){
               ctx.read<myThemeProvider>().themeChange(ThemeMode.light);
                },
                child: Container(
                  width:100,
                  height:50,
                  decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(15),
                    color:Colors.blue,
                  ),
                  child:const Center(child: Text('Light',style:TextStyle(color:Colors.white,fontSize:12,fontWeight:FontWeight.bold),)),
                ),
              );





              // IconButton(onPressed:(){
              //   ctx.read<myThemeProvider>().themeChange(ThemeMode.dark);
              // }, icon:const Icon(Icons.mood,size:30,))
              //     : IconButton(onPressed:(){
              //       ctx.read<myThemeProvider>().themeChange(ThemeMode.light);
              // }, icon:const Icon(Icons.mood,size:30,));
            },
        )
      ),
    );
  }
}
