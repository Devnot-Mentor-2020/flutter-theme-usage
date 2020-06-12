import 'dart:async';

import 'package:flutter_theme_sage/model/enum/sharedpref_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelperSecond {
  static SharedPrefHelperSecond  _prefsInstance ;
  SharedPreferences _sharedPreferences;

  static SharedPrefHelperSecond get prefInstance => _prefsInstance;

  SharedPrefHelperSecond._privateConstructor();

  static void _createInstance () async {
    if(_prefsInstance == null){
      _prefsInstance = SharedPrefHelperSecond._privateConstructor();
      _prefsInstance._sharedPreferences = await SharedPreferences.getInstance();
    }
  }

  static SharedPrefHelperSecond getInstance(){// lazy initiation!!
    if(_prefsInstance == null){
      _createInstance();
    }
    return _prefsInstance;
  }


  bool checkContains(SharedPrefKeys key){
    return _sharedPreferences.containsKey(key.toString());
  }
  bool getBool(SharedPrefKeys key){
    return _sharedPreferences.getBool(key.toString());
  }

  void setBool(SharedPrefKeys key,bool value){
    _sharedPreferences.setBool(key.toString(), value);
  }


}