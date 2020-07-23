import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class Recipe_notes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: 1920, // Optional
      width: 1080, // Optional
      allowFontScaling: true, // Optional
    );
    return ResponsiveWidgets.builder(
      height: 1920, // Optional
      width: 1080, // Optional
      allowFontScaling: true,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      child: Image.asset(
                          'Assets/recipe_notes/Backward arrow.png.png'),
                    ),
                    TextResponsive(
                      'Recipe notes',
                      style: TextStyle(
                        fontFamily: 'SofiaPro-SemiBold',
                        fontSize: 50,
                        color: const Color(0xff130f10),
                      ),
                    ),
                  ],
                ),
              ),
              Recipenotes_card(
                path: 'Assets/recipe_notes/Layer 9.png',
                name: 'Mint Sprouts',
                star: 5,
                like: 357,
                time: 35,
                steps: 5,
                intgrediants: 10,
                cost: 10,
                loScore: 23,
                hlthScore: 43,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Recipenotes_card extends StatelessWidget {
  final String path;
  final String name;
  final int star;
  final int time;
  final int steps;
  final int like;
  final int intgrediants;
  final int cost;
  final int loScore;
  final int hlthScore;
  Recipenotes_card(
      {this.path,
      this.like,
      this.name,
      this.star,
      this.time,
      this.steps,
      this.intgrediants,
      this.cost,
      this.hlthScore,
      this.loScore});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: 1005.0.w,
                height: 1126.0.h,
                child: Image.asset(path),
              ),
              Positioned(
                right: 0,
                top: 5,
                child: Container(
                  width: 120.0.h,
                  height: 120.0.h,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(60.0.h, 60.0.h)),
                    color: Color(0xffffffff),
                  ),
                  child: Image.asset(
                    'Assets/recipe_notes/heart.png.png',
                    height: 10,
                    width: 10,
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: GestureDetector(
                  child: Container(
                    height: 132.h,
                    width: 407.h,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // Adobe XD layer: 'Rectangle 5 copy 3' (shape)

                        TextResponsive(
                          'Visit Recipe',
                          style: TextStyle(
                            fontFamily: 'SofiaPro-SemiBold',
                            fontSize: 30,
                            color: Color(0xff130f10),
                          ),
                        ),
                        Image.asset(
                          'Assets/recipe_notes/Forward arrow.png.png',
                          height: 44.h,
                          width: 65.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  TextResponsive(
                    name,
                    style: TextStyle(
                      fontFamily: 'SofiaPro-SemiBold',
                      fontSize: 70,
                      color: const Color(0xff130f10),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Image.asset(
                        'Assets/recipe_notes/star.png.png',
                        height: 51.h,
                        width: 54.h,
                      ),
                      TextResponsive(
                        '($star) | $like Liked this',
                        style: TextStyle(fontSize: 40),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  TextResponsive(
                    '$time',
                    style: TextStyle(
                      fontFamily: 'SofiaPro-SemiBold',
                      fontSize: 80,
                      color: const Color(0xff000000),
                    ),
                  ),
                  TextResponsive(
                    'Minutes',
                    style: TextStyle(
                      fontFamily: 'SofiaPro',
                      fontSize: 40,
                      color: const Color(0x80130f10),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset('Assets/pmv2/time copy 4.png'),
              Image.asset('Assets/pmv2/cooking copy 5.png'),
              Image.asset('Assets/pmv2/dollar copy 6.png'),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextResponsive(
                '$steps steps',
                style: TextStyle(
                  fontFamily: 'SofiaPro',
                  fontSize: 35,
                  color: const Color(0xff130f10),
                ),
              ),
              TextResponsive(
                '$intgrediants Ingrediants',
                style: TextStyle(
                  fontFamily: 'SofiaPro',
                  fontSize: 35,
                  color: const Color(0xff130f10),
                ),
              ),
              TextResponsive(
                '\$$cost cost ',
                style: TextStyle(
                  fontFamily: 'SofiaPro',
                  fontSize: 35,
                  color: const Color(0xff130f10),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 430.0.w,
                height: 120.0.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: const Color(0x80d9f1f4),
                  border: Border.all(width: 1.0, color: Color(0x809df4fa)),
                ),
                child: TextResponsive(
                  '$loScore% leftover score',
                  style: TextStyle(
                    fontFamily: 'SofiaPro-Medium',
                    fontSize: 40,
                    color: const Color(0xff55ccd4),
                  ),
                ),
              ),
              Container(
                width: 430.0.w,
                height: 120.0.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: const Color(0x80d9f1f4),
                  border:
                      Border.all(width: 1.0, color: const Color(0x809df4fa)),
                ),
                child: TextResponsive(
                  '$hlthScore% Health score',
                  style: TextStyle(
                    fontFamily: 'SofiaPro-Medium',
                    fontSize: 40,
                    color: const Color(0xff55ccd4),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
