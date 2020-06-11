import 'package:flutter/material.dart';
import 'package:flutter_theme_sage/design/morning_theme.dart';
import 'package:flutter_theme_sage/design/sleep_theme.dart';

class MyThemeModel extends ChangeNotifier{
  ThemeData _themedata;

  MyThemeModel(bool isActive){
    if(isActive == null){
      getThemeData;
    }
    else{
      if(isActive){
        _themedata = sleepTheme;
      }
      else{
        _themedata = morningTheme;
      }
    }

  }

  ThemeData get getThemeData => _themedata;

  void setThemeData(ThemeData data){
    _themedata = data;
    notifyListeners();
  }
}