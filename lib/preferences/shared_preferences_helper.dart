import 'dart:async';

import 'package:flutter_theme_sage/model/enum/sharedpref_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelperSecond {
  //static Future<SharedPreferences> get _instance async => _prefsInstance ??= await SharedPreferences.getInstance();
  static SharedPrefHelperSecond  _prefsInstance ;
  static SharedPreferences _sharedPreferences;

  SharedPrefHelperSecond._privateConstructor();

  static void _createInstance () async {
    if(_prefsInstance == null){
      _prefsInstance = SharedPrefHelperSecond._privateConstructor();
      _sharedPreferences = await SharedPreferences.getInstance();
    }
  }

  static SharedPrefHelperSecond getInstance(){// lazy initiation!!
    if(_prefsInstance == null){
      _createInstance();
    }
    return _prefsInstance;
  }

  /*static Future<SharedPreferences> init() async {
    _prefsInstance = await _instance;
    return _prefsInstance;
  }*/

  String getString(SharedPrefKeys key) {
    return _sharedPreferences.getString(key.toString());
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

  void setString(SharedPrefKeys key, String value) {
    _sharedPreferences.setString(key.toString() ,value);
  }

}