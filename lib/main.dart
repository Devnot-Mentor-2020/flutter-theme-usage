import 'package:flutter/material.dart';
import 'package:flutter_theme_sage/model/enum/sharedpref_keys.dart';
import 'package:flutter_theme_sage/model/theme_model.dart';
import 'package:flutter_theme_sage/preferences/shared_pref_helper.dart';
import 'package:flutter_theme_sage/preferences/shared_preferences_helper.dart';
import 'file:///C:/Users/Alperen/IdeaProjects/flutter_theme_usage/lib/screen/theme_selection_page.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  //SharedPrefHelperSecond.getInstance();
  await SharedPrefHelper.createInstance();
  var isSleepActive;
  if(SharedPrefHelper.prefInstance.checkContains(SharedPrefKeys.ISMORNING)){
    isSleepActive = SharedPrefHelper.prefInstance.getBool(SharedPrefKeys.ISMORNING);
  }

  else{
    isSleepActive = false;
  }

  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          builder: (context) => MyThemeModel(isSleepActive),
        )
      ],
    child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<MyThemeModel>(context).getThemeData,
      title: 'Theme App',
      home: ThemeSelectionPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}