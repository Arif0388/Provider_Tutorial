import 'package:flutter/material.dart';
import 'package:flutter_provider/Provider/SliderProvider.dart';
import 'package:provider/provider.dart';

class Example2 extends StatelessWidget {
  const Example2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Consumer<SliderProvider>(
             builder:(ctx,value,__) {
               return    Slider(
                 value:value.getValue(),
                 onChanged:(s){
                   ctx.read<SliderProvider>().setSliderValue(s);
                 },
                 max:352,
               );
             },
         ),
        const SizedBox(height:10),
         Text("Slider Value : ${context.watch<SliderProvider>().getValue()}",style:const TextStyle(fontSize:20),),
        const SizedBox(height:20),
        const Text("Example 3"),
        const SizedBox(height:20),
      Row(
        children: [
          Consumer<SliderProvider>(
            builder:(ctx, value,__){
              return Container(
                width:value.getValue(),
                height:100,
                decoration:BoxDecoration(
                  color:Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
              );
            },
          )
        ],
      ),
      ],
    );
  }
}
