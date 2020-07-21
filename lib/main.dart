import 'package:flutter/material.dart';
import 'package:project01withsauiux/planned_mealv2.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import 'filter.dart';
import 'sign_up.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: 1920, // Optional
      width: 1080, // Optional
      allowFontScaling: true, // Optional
    );
    return Plannedmeal();
  }
}
