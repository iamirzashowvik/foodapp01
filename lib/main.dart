import 'package:flutter/material.dart';
import 'package:project01withsauiux/planned_mealv2.dart';
import 'package:project01withsauiux/plannedmeal.dart';
import 'package:project01withsauiux/recipe_details_5.dart';
import 'package:project01withsauiux/sign_up.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import 'control.dart';
import 'filter.dart';
import 'home.dart';
import 'recipe_notes.dart';
import 'sign_in.dart';

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
    return MaterialApp(initialRoute: 'control', routes: {
      'control': (context) => Control(),
      'signup': (context) => SignUp(),
      'signin': (context) => SignIn(),
      'home': (context) => Home(),
      'filter': (context) => Filter_2(),
      'plannedmealv2': (context) => Plannedmeal(),
      'recipe': (context) => Recipe(),
      'Recipe_notes': (context) => Recipe_notes(),
      'plannedmeal1': (context) => Plannedmeal1(),
    });
  }
}
