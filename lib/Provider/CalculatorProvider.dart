import 'package:flutter/cupertino.dart';

class CalculatorProvider extends ChangeNotifier
{
   dynamic _data = 0;
  void addition(int a,int b)
  {
    _data = a+b;
    notifyListeners();
  }

  void Substraction(int a,int b)
  {
    _data = a-b;
    notifyListeners();
  }

  void MultiPlication(int a,int b)
  {
    _data = a*b;
    notifyListeners();
  }

  void divide(double a,double b)
  {
    _data = a/b;
    notifyListeners();
  }

  dynamic getData()=>_data;

}