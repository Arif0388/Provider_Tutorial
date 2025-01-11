import 'package:flutter/cupertino.dart';

class ContentProvider extends ChangeNotifier
{
  int _data = 0;

  void increment(){
    _data ++;
    notifyListeners();
  }


  void decrement(){
    if(_data>0)
      {
        _data--;
      }
    notifyListeners();
  }

  int getData()=>_data;
}