import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_provider/Models/Product.dart';
import 'package:http/http.dart' as http;

class ApiProvider extends ChangeNotifier
{
String API = 'https://fakestoreapi.com/products';
List<Product> products = [];


Future<void> getProducts() async{
 var response =  await http.get(Uri.parse(API));
   var data = jsonDecode(response.body) as List;
   products =  data.map((e)=>
   Product.fromJson(e)
   ).toList();
   notifyListeners();
  }


}