import 'package:flutter/cupertino.dart';

class OnchangeProvider extends ChangeNotifier
{
  String _name = '';

  String getName()=> _name;

  void changedName(String name)
  {
    _name = name;
    notifyListeners();
  }
}