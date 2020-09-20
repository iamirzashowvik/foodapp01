import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import 'api_response/recipe_notes.dart';

class Recipe_notes extends StatefulWidget {
  @override
  _Recipe_notesState createState() => _Recipe_notesState();
}

class _Recipe_notesState extends State<Recipe_notes> {
  Recipes1 _recipes1;
  void getData() async {
    Dio dio = Dio();
    Response response = await dio
        .get('https://pantryrecipe.herokuapp.com/api/v1/recipes/1.json');
    print(response.data);
    setState(() {
      _recipes1 = recipes1FromJson(response.toString());
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

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
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: TextResponsive(
              "Recipe Notes",
              style: TextStyle(
                fontFamily: 'SofiaPro-SemiBold',
                fontSize: 50,
                color: Color(0xff130f10),
              ),
            ),
            centerTitle: true,
          ),
          body: _recipes1 == null
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 1000.h,
                            width: 1005.w,
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            _recipes1.recipe.image),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                Positioned(
                                  right: 5,
                                  top: 5,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Image.asset(
                                      'Assets/recipe_notes/heart.png.png',
                                      width: 48.h,
                                      height: 44.h,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  bottom: 0,
                                  child: GestureDetector(
                                    child: Container(
                                      height: 132.h,
                                      width: 407.w,
                                      color: Colors.white,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          // Adobe XD layer: 'Rectangle 5 copy 3' (shape)

                                          TextResponsive(
                                            'Visit Recipe',
                                            style: TextStyle(
                                              fontFamily: 'SofiaPro-SemiBold',
                                              fontSize: 40,
                                              color: Color(0xff130f10),
                                            ),
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  TextResponsive(
                                    _recipes1.recipe.title.substring(40),
                                    style: TextStyle(
                                      fontFamily: 'SofiaPro-SemiBold',
                                      fontSize: 70,
                                      color: const Color(0xff130f10),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Image.asset(
                                        'Assets/recipe_notes/star.png.png',
                                        height: 51.h,
                                        width: 54.h,
                                      ),
                                      TextResponsive(
                                        '(5)   |   357 Liked this',
                                        style: TextStyle(fontSize: 40),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  TextResponsive(
                                    _recipes1.recipe.readyInMinutes.toString(),
                                    style: TextStyle(
                                      fontFamily: 'SofiaPro-SemiBold',
                                      fontSize: 80,
                                      color: const Color(0xff000000),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
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
                            height: 30,
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
                                '5 steps',
                                style: TextStyle(
                                  fontFamily: 'SofiaPro',
                                  fontSize: 35,
                                  color: const Color(0xff130f10),
                                ),
                              ),
                              TextResponsive(
                                '12 Ingrediants',
                                style: TextStyle(
                                  fontFamily: 'SofiaPro',
                                  fontSize: 35,
                                  color: const Color(0xff130f10),
                                ),
                              ),
                              TextResponsive(
                                '\$10 cost ',
                                style: TextStyle(
                                  fontFamily: 'SofiaPro',
                                  fontSize: 35,
                                  color: const Color(0xff130f10),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
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
                                  border: Border.all(
                                      width: 1.0, color: Color(0x809df4fa)),
                                ),
                                child: Center(
                                  child: TextResponsive(
                                    '23% leftover score',
                                    style: TextStyle(
                                      fontFamily: 'SofiaPro-Medium',
                                      fontSize: 40,
                                      color: const Color(0xff55ccd4),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 430.0.w,
                                height: 120.0.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: const Color(0x80d9f1f4),
                                  border: Border.all(
                                      width: 1.0,
                                      color: const Color(0x809df4fa)),
                                ),
                                child: Center(
                                  child: TextResponsive(
                                    '${_recipes1.recipe.healthScore.toString()}% Health score',
                                    style: TextStyle(
                                      fontFamily: 'SofiaPro-Medium',
                                      fontSize: 40,
                                      color: const Color(0xff55ccd4),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
