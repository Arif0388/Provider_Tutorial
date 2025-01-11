import 'package:flutter/material.dart';
import 'package:flutter_provider/Calculator/Calculator.dart';
import 'package:flutter_provider/Provider/ApiPorovider.dart';
import 'package:provider/provider.dart';

class ApiExample extends StatelessWidget {
  const ApiExample({super.key});

  @override
  Widget build(BuildContext context) {
    final apiProvider = Provider.of<ApiProvider>(context);
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.white,
        centerTitle:true,
        title:const Text('API'),
      ),
      body:Consumer<ApiProvider>(builder:(ctx,value,__) {
        return  value.products.isEmpty ? const Center(child: CircularProgressIndicator(color:Colors.green,))
            : GridView.builder(
          itemCount:value.products.length,
          padding:const EdgeInsets.all(10),
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
        itemBuilder:(context, index) {
        return Container(
          margin:const EdgeInsets.all(5),
          padding:const EdgeInsets.all(10),
          color:Colors.blueGrey,
          child:Column(
            children: [
              Expanded(
                flex:2,
                  child: ClipRRect(
                    borderRadius:BorderRadius.circular(20),
                    child: Image.network(
                        value.products[index].image!),
                  )
              ),
              Expanded(
                flex:1,
                  child:Column(
                    children: [
                      Text(value.products[index].title!,maxLines:1,),
                      Text(value.products[index].price.toString() ?? 'Free',maxLines:1,),
                    ],
                  ),
              ),
            ],
          ),
        );
        },
        );
      },)
    );
  }
}
