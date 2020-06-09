import 'package:flutter/material.dart';
import 'package:flutter_theme_sage/model/theme_model.dart';
import 'package:flutter_theme_sage/theme_selection_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          builder: (context) => MyThemeModel(),
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
      theme: Provider.of<MyThemeModel>(context).getThemeData,title: 'Theme App',home: ThemeSelectionPage(),debugShowCheckedModeBanner: false,
    );
  }
}