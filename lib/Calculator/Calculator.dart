import 'package:flutter/material.dart';
import 'package:flutter_provider/Provider/CalculatorProvider.dart';
import 'package:provider/provider.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController first = TextEditingController();
    TextEditingController second = TextEditingController();
    TextEditingController value1 = TextEditingController();
    TextEditingController value2 = TextEditingController();
    return  Scaffold(
      appBar:AppBar(
        title:const Text("Calculator",style:TextStyle(fontWeight:FontWeight.w700,color:Colors.yellowAccent)),
        backgroundColor:Colors.green,
      ),
      body:Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
        Consumer(
            builder:(ctx,_,__) {
             return Text("Result : ${ctx.watch<CalculatorProvider>().getData()}");
        },
        ),
       const SizedBox(height:10),
       Center(
         child: Container(
           width:370,
           height:330,
           decoration:BoxDecoration(
             borderRadius:BorderRadius.circular(20),
             color:Colors.grey,
           ),
           child:Column(
             children: [
               const SizedBox(height:50),
               SizedBox(
                 width:250,
                 child: TextField(
                   controller:first,
                   decoration:InputDecoration(
                     focusColor:Colors.lightGreenAccent,
                     hintText:'    Enter First Value',
                     border: UnderlineInputBorder(
                       borderRadius:BorderRadius.circular(15),
                     ),
                   ),
                 ),
               ),
               const SizedBox(height:15),
               SizedBox(
                 width:250,
                 child: TextField(
                   controller:second,
                   decoration:InputDecoration(
                     focusColor:Colors.lightGreenAccent,
                     hintText:'    Enter Second Value',
                     border: UnderlineInputBorder(
                       borderRadius:BorderRadius.circular(15),
                     ),
                   ),
                 ),
               ),
               const SizedBox(height:25),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceAround,
                 children: [
                   ElevatedButton(onPressed: (){
                     var a = int.parse(first.text);
                     var b = int.parse(second.text);
                   context.read<CalculatorProvider>().addition(a,b);
                   }, child:const Center(child: Text("+"))),
                   ElevatedButton(onPressed: (){
                     context.read<CalculatorProvider>().Substraction(int.parse(first.text),int.parse(second.text));
                   }, child:const Center(child: Text("-"))),
                   ElevatedButton(onPressed: (){
                     context.read<CalculatorProvider>().MultiPlication(int.parse(first.text),int.parse(second.text));
                   }, child:const Center(child: Text("*"))),
                   ElevatedButton(onPressed: (){
                     context.read<CalculatorProvider>().divide(double.parse(first.text),double.parse(second.text));
                   }, child:const Center(child: Text("/"))),
                 ],
               ),
             ],
           ),
         ),
       ),
        ],
      )
    );
  }
}
