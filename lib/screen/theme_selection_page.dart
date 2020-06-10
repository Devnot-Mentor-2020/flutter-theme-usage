import 'package:flutter/material.dart';
import 'package:flutter_theme_sage/model/theme_model.dart';
import 'package:provider/provider.dart';
import 'package:day_night_switch/day_night_switch.dart';
import '../design/sleep_theme.dart';
import '../design/morning_theme.dart';
class ThemeSelectionPage extends StatefulWidget {
  @override
  _ThemeSelectionPageState createState() => _ThemeSelectionPageState();
}

class _ThemeSelectionPageState extends State<ThemeSelectionPage> {
  var _isMorning = true;

  @override
  Widget build(BuildContext context) {
    final myThemeModel = Provider.of<MyThemeModel>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
      appBar: AppBar(title: Text("Theme Selector"),),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildDayNightSwitch(myThemeModel)
          ],
        ),
      )
    );
}

  DayNightSwitch buildDayNightSwitch(MyThemeModel myThemeModel) {
    return DayNightSwitch(
            value: _isMorning,
            onChanged: (value) {
              setState(() {
                _isMorning = value;
              });
              onThemeChanged(value, myThemeModel);
            },
          );
  }
  void onThemeChanged(bool value, MyThemeModel myThemeModel) {
    (value)
        ? myThemeModel.setThemeData(morningTheme)
        : myThemeModel.setThemeData(sleepTheme);
  }
}
