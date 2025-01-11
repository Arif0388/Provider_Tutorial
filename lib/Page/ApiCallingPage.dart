import 'package:flutter/material.dart';
import 'package:flutter_provider/Provider/RestApiProvider.dart';
import 'package:provider/provider.dart';

class ApiCallingPage extends StatelessWidget {
  const ApiCallingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.blueGrey,
        title:const Text('Api'),
        centerTitle:true,
        actions: [
          IconButton(onPressed: (){
           // context.read<RestApiProvider>().getPosts();
           context.read<RestApiProvider>().getPhotos();
          }, icon:const Icon(Icons.call)),
        ],
      ),
      body:Column(
        children: [
          Consumer<RestApiProvider>(builder: (context, value,__) {
            return Expanded(
              child: GridView.builder(
                itemCount:value.photos.length,
                  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
                  itemBuilder:(context, index) {
                    return Container(
                      margin:const EdgeInsets.all(5),
                    width:100,
                    height:150,
                    decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(12),
                    color:Colors.grey,
                    ),
                      child:Text(value.photos[index].title!),
                    );
                  },
              ),
            );
          
          
          
          
          
          
            //   ListView.builder(
            //      itemCount:value.posts.length,
            //   itemBuilder:(context, index) {
            //     return Container(
            //       margin:const EdgeInsets.all(5),
            //       width:100,
            //       height:150,
            //       decoration:BoxDecoration(
            //         borderRadius:BorderRadius.circular(12),
            //         color:Colors.grey,
            //       ),
            //       child:Column(
            //         children: [
            //           Expanded(
            //             child: ListTile(
            //              leading:Text("id:${value.posts[index].id.toString()}",style:const TextStyle(color:Colors.red),),
            //               title:Text(value.posts[index].title!),
            //               subtitle:Text(value.posts[index].body!),
            //               trailing:Text(value.posts[index].userId.toString()),
            //             ),
            //           ),
            //         ],
            //       )
            //     );
            //   },
            // );
          
          
          
          
          
          
          
          
          
          },)
        ],
      ),
    );
  }
}
