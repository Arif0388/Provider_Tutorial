import 'package:flutter/cupertino.dart';

class SliderProvider extends ChangeNotifier
{
  double _slideValue =0;

  double getValue()=>_slideValue;

  void setSliderValue(double value){
    _slideValue = value;
    notifyListeners();
  }


}