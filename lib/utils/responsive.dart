
import 'package:flutter/material.dart';

class ResponsiveUI{

  double _height = 0;
  double _width = 0;

  ResponsiveUI(BuildContext context){
    Size size = MediaQuery.of(context).size;
    _height = size.height;
    _width = size.width;
  }

  double wp(double percent) => _width * percent / 100;
  double hp(double percent) => _height * percent / 100;

  static double pWidth(BuildContext context, double width){
    return MediaQuery.of(context).size.width * width;
  }

  static double pHeight(BuildContext context, double height){
    return MediaQuery.of(context).size.height * height;
  }

}