import 'package:flutter/material.dart';
import 'package:flutter_provider/Calculator/Calculator.dart';
import 'package:flutter_provider/Example/ApiExample.dart';
import 'package:flutter_provider/Example/themeExample.dart';
import 'package:flutter_provider/Provider/ApiPorovider.dart';
import 'package:flutter_provider/Provider/ContentProvider.dart';
import 'package:flutter_provider/Example/example2.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';

import '../Example/example3.dart';

class HomePage extends StatelessWidget
{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
   return   Scaffold(
     appBar:AppBar(
       backgroundColor:Colors.grey,
       title:const Text("Provider"),
     ),
     body: Padding(
       padding: const EdgeInsets.all(20),
       child: ListView(
         children:[ Column(
           children: [
             const Text("Example 1"),
              Row(
               mainAxisAlignment:MainAxisAlignment.center,
               children: [
                 Consumer(
                     builder:(ctx,_,__){
                     return  Text("${context.watch<ContentProvider>().getData()}",style:const TextStyle(fontSize:30),);
                     },
                 ),
               ],
             ),
             const SizedBox(height:20),
             Row(
               mainAxisAlignment:MainAxisAlignment.spaceAround,
               children: [
                 ElevatedButton(onPressed: (){
                   context.read<ContentProvider>().increment();
                 }, child:const Text("Increase")),
                 ElevatedButton(onPressed: (){
                   context.read<ContentProvider>().decrement();
                 }, child:const Text("Decrease")),
               ],
             ),
             const SizedBox(height:20),
             const Text("Example 2"),
             const SizedBox(height:10),
             const Example2(),
             const Example3(),
             const SizedBox(height:10),
            const ThemeExample(),
             const SizedBox(height:10),
             const Row(
               children: [
                 Text("API WITH PROVIDER"),
               ],
             ),
             const SizedBox(height:10),
             InkWell(
               onTap:(){
                 context.read<ApiProvider>().getProducts();
                 Get.to(const ApiExample());
               },
               child: Container(
                 width:200,
                 height:50,
                 decoration:BoxDecoration(
                   borderRadius:BorderRadius.circular(15),
                   color:Colors.grey,
                 ),
                 child:const Center(child: Text('API CALLING (GET)',style:TextStyle(fontSize:15,color:Colors.white),)),
               ),
             ),
           ],
         ),
  ]
       ),
     ),
   );
  }
  
}