import 'dart:async';

import 'package:flutter_theme_sage/model/enum/sharedpref_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  static SharedPrefHelper  _prefsInstance = SharedPrefHelper._init();
  SharedPreferences _sharedPreferences; //

  // SharedPrefHelper._privateConstructor();
  static SharedPrefHelper get prefInstance => _prefsInstance;

  SharedPrefHelper._init(){
    SharedPreferences.getInstance().then((value){
      _sharedPreferences = value;
    });
  }

  static Future createInstance() async {
    if(prefInstance._sharedPreferences == null){
      prefInstance._sharedPreferences = await SharedPreferences.getInstance();
    }
    return;
  }

  bool checkContains(SharedPrefKeys key){
    return _sharedPreferences.containsKey(key.toString());
  }
  bool getBool(SharedPrefKeys key) {
    return _sharedPreferences.getBool(key.toString());
  }

  Future<void> setBool(SharedPrefKeys key, bool value) async {
    await _sharedPreferences.setBool(key.toString(), value);
  }

  void remove(SharedPrefKeys key){
    _sharedPreferences.remove(key.toString());
  }
}