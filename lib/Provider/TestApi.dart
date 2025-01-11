import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_provider/Models/Cart.dart';
import 'package:http/http.dart' as http;

class TestApiProvider extends ChangeNotifier
{
  List<Cart> cart = [];
  String url = 'https://fakestoreapi.com/carts';

  Future<void> getCarts() async{
      var response =  await http.get(Uri.parse(url));
      var data = jsonDecode(response.body) as List;
       cart = data.map((e)=>
      Cart.fromJson(e)
      ).toList();
      notifyListeners();
  }
}