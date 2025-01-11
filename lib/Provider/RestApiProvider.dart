import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_provider/Models/Photos.dart';
import 'package:flutter_provider/Models/Posts.dart';
import 'package:http/http.dart' as http;
class RestApiProvider extends ChangeNotifier
{
//   postsUrl
String postsUrl = 'https://jsonplaceholder.typicode.com/posts';
// albumsUrl
String photosUrl = 'https://jsonplaceholder.typicode.com/photos';
// List as a PostsModel
List<PostsModel> posts = [];
// List as a PhotosModel
List<PhotosModel> photos = [];

// Posts
Future<void> getPosts()async{
  final response = await http.get(Uri.parse(postsUrl));
var data = jsonDecode(response.body) as List;

   if(response.statusCode == 200)
     {
       posts = data.map((e)=>
        PostsModel.fromJson(e)
       ).toList();
       notifyListeners();
     }
   else
     {
       print('no data coming');
    }
  }

//   Albums
Future<void> getPhotos()async {
    final response = await http.get(Uri.parse(photosUrl));
    var data = jsonDecode(response.body) as List;
    if(response.statusCode == 200)
      {
        photos = data.map((e)=>
        PhotosModel.fromJson(e)
        ).toList();
      }
  }

}