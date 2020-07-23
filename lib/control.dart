import 'package:flutter/material.dart';

class Control extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'signup');
                },
                child: Text('signup'),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'home');
                },
                child: Text('home'),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'filter');
                },
                child: Text('filter'),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'plannedmealv2');
                },
                child: Text('plannedmealv2'),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'recipe');
                },
                child: Text('recipe_details'),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'Recipe_notes');
                },
                child: Text('Recipe_notes'),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'plannedmeal1');
                },
                child: Text('plannedmeal1'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
