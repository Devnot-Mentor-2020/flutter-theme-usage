import 'package:flutter/material.dart';

class MyThemeModel extends ChangeNotifier{
  ThemeData _themedata;

  ThemeData get getThemeData => _themedata;

  void setThemeData(ThemeData data){
    _themedata = data;
    notifyListeners();
  }
}