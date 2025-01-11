import 'package:flutter/material.dart';
import 'package:flutter_provider/Provider/onchangedProvider.dart';
import 'package:provider/provider.dart';

class Example3 extends StatelessWidget {
  const Example3({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name  = TextEditingController();
    return  Column(
      children: [
        const SizedBox(height:20),
        const Text("Example 4"),
        const SizedBox(height:20),
        Consumer(
          builder:(ctx,_,__){
            return  Row(
              children: [
                Expanded(child: Text("Your Name : ${ctx.watch<OnchangeProvider>().getName()}")),
              ],
            );
          },
        ),
        const SizedBox(height:20),
        TextFormField(
          controller:name,
          decoration: const InputDecoration(
            hintText:'Enter Name',
            fillColor:Colors.grey,
            filled:true,
          ),
        ),
        const SizedBox(height:20),
        ElevatedButton(onPressed:(){
          context.read<OnchangeProvider>().changedName(name.text);
          name.clear();
        }, child:const Text('Done')),
      ],
    );
  }
}
