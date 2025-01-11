import 'package:flutter/material.dart';
import 'package:flutter_provider/Provider/TestApi.dart';
import 'package:provider/provider.dart';

class apiPage extends StatelessWidget {
  const apiPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle:true,
        backgroundColor:Colors.blueGrey,
        title:const Text("Api Calling"),
        actions: [
          IconButton(onPressed: (){
            context.read<TestApiProvider>().getCarts();
          }, icon:const Icon(Icons.add)),
        ],
      ),
     body:Consumer<TestApiProvider>(builder: (context, value,__) {
       return GridView.builder(
         itemCount:value.cart.length,
         gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
         itemBuilder:(context, index) {
           return Container(
             margin:const EdgeInsets.all(8),
             width:100,
             height:100,
             decoration:BoxDecoration(
               borderRadius:BorderRadius.circular(20),
               color:Colors.teal,
             ),
             child:Column(
               children: [
                 Text(value.cart[index].userId.toString()
                 ),
               ],
             ),
           );
         },
       );
     })
    );
  }
}
