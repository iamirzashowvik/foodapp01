import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class Plannedmeal extends StatelessWidget {
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
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: TextResponsive(
            'My planned meal',
            style: TextStyle(
              fontFamily: 'SofiaPro-SemiBold',
              fontSize: 50,
              color: const Color(0xff130f10),
              height: 1.2,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset(
                      'Assets/pmv2/1501791674-delish-chicken-curry-horizontal copy.png'),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            TextResponsive(
                              'Maxican rice with meat',
                              style: TextStyle(
                                fontFamily: 'SofiaPro-SemiBold',
                                fontSize: 50,
                                color: const Color(0xff130f10),
                                height: 1.2,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            TextResponsive(
                              '\$35',
                              style: TextStyle(
                                fontFamily: 'Gilroy-SemiBold',
                                fontSize: 70,
                                color: const Color(0xffff718b),
                                height: 0.8571428571428571,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Image.asset('Assets/pmv2/star copy -9.png'),
                            Image.asset('Assets/pmv2/star copy -9.png'),
                            Image.asset('Assets/pmv2/star copy -9.png'),
                            Image.asset('Assets/pmv2/star copy -9.png'),
                            Image.asset('Assets/pmv2/star copy -9.png'),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset('Assets/pmv2/time copy 4.png'),
                  Image.asset('Assets/pmv2/cooking copy 5.png'),
                  Image.asset('Assets/pmv2/dollar copy 6.png'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  TextResponsive(
                    '05 steps',
                    style: TextStyle(
                      fontFamily: 'SofiaPro',
                      fontSize: 35,
                      color: const Color(0xff130f10),
                      height: 1.1314285278320313,
                    ),
                  ),
                  TextResponsive(
                    '12 Ingrediants',
                    style: TextStyle(
                      fontFamily: 'SofiaPro',
                      fontSize: 35,
                      color: const Color(0xff130f10),
                      height: 1.1314285278320313,
                    ),
                  ),
                  TextResponsive(
                    '\$10 cost ',
                    style: TextStyle(
                      fontFamily: 'SofiaPro',
                      fontSize: 35,
                      color: const Color(0xff130f10),
                      height: 1.1314285278320313,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 430.0.w,
                    height: 120.0.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: const Color(0x80d9f1f4),
                      border: Border.all(
                          width: 1.0, color: const Color(0x809df4fa)),
                    ),
                    child: TextResponsive(
                      '23% leftover score',
                      style: TextStyle(
                        fontFamily: 'SofiaPro-Medium',
                        fontSize: 40,
                        color: const Color(0xff55ccd4),
                        height: 1.95,
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
                          width: 1.0, color: const Color(0x809df4fa)),
                    ),
                    child: TextResponsive(
                      '43% Health score',
                      style: TextStyle(
                        fontFamily: 'SofiaPro-Medium',
                        fontSize: 40,
                        color: const Color(0xff55ccd4),
                        height: 1.95,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Color(0xFFE64445),
                          child: Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                        ),
                        TextResponsive(
                          'Remove',
                          style: TextStyle(
                            fontFamily: 'SofiaPro',
                            fontSize: 35,
                            color: const Color(0xff130f10),
                            height: 1.1314285278320313,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Color(0xFF0CE061),
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                        ),
                        TextResponsive(
                          'Mark as done',
                          style: TextStyle(
                            fontFamily: 'SofiaPro',
                            fontSize: 35,
                            color: const Color(0xff130f10),
                            height: 1.1314285278320313,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              BottomAppBar(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        GestureDetector(
                          child: Column(
                            children: <Widget>[
                              Image.asset('Assets/pmv2/home-run (1).png'),
                              TextResponsive('Home'),
                            ],
                          ),
                        ),
                        GestureDetector(
                          child: Column(
                            children: <Widget>[
                              Image.asset('Assets/pmv2/search.png'),
                              TextResponsive('Search'),
                            ],
                          ),
                        ),
                        GestureDetector(
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                  'Assets/pmv2/portable-document-format.png'),
                              TextResponsive('Orders'),
                            ],
                          ),
                        ),
                        GestureDetector(
                          child: Column(
                            children: <Widget>[
                              Image.asset('Assets/pmv2/user.png'),
                              TextResponsive('User'),
                            ],
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
