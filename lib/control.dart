import 'package:flutter/cupertino.dart';
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
              FlatButton(
                padding: EdgeInsets.all(10),
                color: Colors.amber,
                onPressed: () {
                  Navigator.pushNamed(context, 'signup');
                },
                child: Text('signup'),
              ),
              FlatButton(
                padding: EdgeInsets.all(10),
                color: Colors.amber,
                onPressed: () {
                  Navigator.pushNamed(context, 'signin');
                },
                child: Text('signin'),
              ),
              FlatButton(
                padding: EdgeInsets.all(10),
                color: Colors.amber,
                onPressed: () {
                  Navigator.pushNamed(context, 'home');
                },
                child: Text('home'),
              ),
              FlatButton(
                padding: EdgeInsets.all(10),
                color: Colors.amber,
                onPressed: () {
                  Navigator.pushNamed(context, 'filter');
                },
                child: Text('filter'),
              ),
              FlatButton(
                padding: EdgeInsets.all(10),
                color: Colors.amber,
                onPressed: () {
                  Navigator.pushNamed(context, 'plannedmealv2');
                },
                child: Text('plannedmealv2'),
              ),
              FlatButton(
                padding: EdgeInsets.all(10),
                color: Colors.amber,
                onPressed: () {
                  Navigator.pushNamed(context, 'recipe');
                },
                child: Text('recipe_details'),
              ),
              FlatButton(
                padding: EdgeInsets.all(10),
                color: Colors.amber,
                onPressed: () {
                  Navigator.pushNamed(context, 'Recipe_notes');
                },
                child: Text('Recipe_notes'),
              ),
              FlatButton(
                padding: EdgeInsets.all(10),
                color: Colors.amber,
                onPressed: () {
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
