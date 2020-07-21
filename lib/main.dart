import 'package:flutter/material.dart';
import 'package:project01withsauiux/planned_mealv2.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: 1920, // Optional
      width: 1080, // Optional
      allowFontScaling: true,
    );
    return Home();
  }
}
