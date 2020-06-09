import 'package:flutter/material.dart';
import 'package:flutter_theme_sage/model/theme_model.dart';
import 'package:provider/provider.dart';

import 'design/customized_theme.dart';
class ThemeSelectionPage extends StatefulWidget {
  @override
  _ThemeSelectionPageState createState() => _ThemeSelectionPageState();
}

class _ThemeSelectionPageState extends State<ThemeSelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Theme Selector"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(onPressed:(){
              Provider.of<MyThemeModel>(context).setThemeData(myTheme);
            },
            child: Text("Make me Brown"),
            ),
          ],
        ),
      ),
    );
  }
}
