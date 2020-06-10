import 'package:flutter/material.dart';
import 'package:flutter_theme_sage/design/morning_theme.dart';

class MyThemeModel extends ChangeNotifier{
  ThemeData _themedata ;

  ThemeData get getThemeData => _themedata;

  void setThemeData(ThemeData data){
    _themedata = data;
    notifyListeners();
  }
}