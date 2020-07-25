import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import 'package:pie_chart/pie_chart.dart';
import 'dart:io';

import 'package:flutter/foundation.dart';

class Recipe extends StatefulWidget {
  @override
  _RecipeState createState() => _RecipeState();
}

class _RecipeState extends State<Recipe> {
  bool toggle = false;
  Color selectedColor1 = Color(0xffff718b);
  Color selectedColor2 = Colors.black;
  Color cc = Color(0xffff718b);
  Map<String, double> dataMap = Map();
  List<Color> colorList = [
    Color(0xFFFFBD4B),
    Color(0xFF55CCD4),
  ];
  @override
  void initState() {
    super.initState();
    dataMap.putIfAbsent("Leftover Ingredients", () => 75);
    dataMap.putIfAbsent("Used Ingredients", () => 25);
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
              "Recipe",
              style: TextStyle(
                fontFamily: 'SofiaPro-SemiBold',
                fontSize: 50,
                color: Color(0xff130f10),
              ),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 450.h,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: -5,
                          left: 20,
                          child: Image.asset(
                            'Assets/recipe_details/Place Your Image Here.png',
                            height: 454.h,
                            width: 953.w,
                          ),
                        ),
                        // Adobe XD layer: 'Place Your Image He…' (group)
                        Positioned(
                          top: -10,
                          left: 840.w,
                          child: Image.asset(
                            'Assets/recipe_details/Place Your Image Here.png',
                            height: 454.h,
                            width: 953.w,
                          ),
                        ),
                        Positioned(
                          left: 30,
                          child: Image.asset(
                            'Assets/recipe_details/Place Your Image Here (Double Click to Edit)-1.png',
                            height: 363.h,
                            width: 888.w,
                          ),
                        ),
                        Positioned(
                          child: Image.asset(
                              'Assets/recipe_details/Vector Smart Object (Double Click To Edit).png'),
                        ),
                        Positioned(
                          top: -30,
                          left: 100,
                          child: Image.asset(
                            'Assets/recipe_details/Place Your Image Here (Double Click to Edit).png',
                            width: 145,
                            height: 176,
                          ),
                        ),
                        Align(
                          child: Image.asset(
                            'Assets/recipe_details/kisspng-pizza-margherita-bacon-delivery-cheese-pizza-menu-5b2597bcabaf52.8918615115291903327032.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Center(
                    child: TextResponsive(
                      'Tomotto pizza',
                      style: TextStyle(
                        fontFamily: 'SofiaPro-Bold',
                        fontSize: 75,
                        color: const Color(0xff130f10),
                        height: 0.8,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: TextResponsive(
                      '35 - 40Minutes',
                      style: TextStyle(
                        fontFamily: 'SofiaPro-Medium',
                        fontSize: 40,
                        color: const Color(0x80282828),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DefaultTabController(
                    // The number of tabs / content sections to display.
                    length: 2,
                    child: Column(
                      children: <Widget>[
                        TabBar(
                          tabs: [
                            Tab(
                              child: Container(
                                width: 502.5.w,
                                height: 157.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30.0),
                                  ),
                                  color: Color(0xfffffafb),
                                ),
                                child: Center(
                                  child: TextResponsive(
                                    'Ingrediants',
                                    style: TextStyle(
                                      fontFamily: 'SofiaPro-SemiBold',
                                      fontSize: 50,
                                      color: selectedColor1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                width: 502.5.w,
                                height: 157.h,
                                child: Center(
                                  child: TextResponsive(
                                    'Method',
                                    style: TextStyle(
                                      fontFamily: 'SofiaPro-SemiBold',
                                      fontSize: 50,
                                      color: selectedColor2,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        //   Expanded(
                        //  child: TabBarView(
                        //    children: [
//                              Container(
//                                width: 700,
//                                height: 700,
//                                child: Column(
//                                  children: <Widget>[
//                                    Ing(
//                                      color: Color(0xFF0FC535),
//                                      data: '500g',
//                                      string: 'Cornmeal',
//                                    ),
//                                    Ing(
//                                      color: Color(0xFFE5E5E5),
//                                      data: '300g',
//                                      string: 'Flour',
//                                    ),
//                                    Ing(
//                                      color: Color(0xFF0FC535),
//                                      data: '1 lb.',
//                                      string: 'Pizza dough',
//                                    ),
//                                    Ing(
//                                      color: Color(0xFFE5E5E5),
//                                      data: '1 lb.',
//                                      string: 'Tomato Sauce',
//                                    ),
//                                    Ing(
//                                      color: Color(0xFF0FC535),
//                                      data: '3/4 c',
//                                      string: 'Large tomatoes',
//                                    ),
//                                    Ing(
//                                      color: Color(0xFF0FC535),
//                                      data: '1/2',
//                                      string: 'Small Red Onion',
//                                    ),
//                                    Ing(
//                                      color: Color(0xFF0FC535),
//                                      data: '4 oz.',
//                                      string: 'Mozzarella',
//                                    ),
//                                  ],
//                                ),
//                              ),
//                              Container(
//                                child: Column(
//                                  children: <Widget>[
//                                    TextResponsive(
//                                      'hi',
//                                      style: TextStyle(
//                                        fontFamily: 'SofiaPro-Light',
//                                        fontSize: 40,
//                                        color: const Color(0xb3130f10),
//                                        height: 1.5,
//                                      ),
//                                      textAlign: TextAlign.left,
//                                    ),
//                                    TextResponsive(
//                                      'hello',
//                                      style: TextStyle(
//                                        fontFamily: 'SofiaPro-Light',
//                                        fontSize: 40,
//                                        color: const Color(0xb3130f10),
//                                        height: 1.5,
//                                      ),
//                                      textAlign: TextAlign.left,
//                                    ),
//                                  ],
//                                ),
//                              ),
                        // ],
                        //   ),
                        // ),
                      ],
                    ), // Complete this code in the next step.
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 10,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      TextResponsive(
                        'Keep track my leftovers',
                        style: TextStyle(
                          fontFamily: 'SofiaPro-Light',
                          fontSize: 40,
                          color: const Color(0xb3130f10),
                          height: 1.5,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  // Adobe XD layer: 'Rectangle 7 copy 21' (shape)
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Container(
                      width: 800.w,
                      height: 140.0.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0xffff718b),
                      ),
                      child: Center(
                        child: TextResponsive(
                          'Add to menu',
                          style: TextStyle(
                            fontFamily: 'SofiaPro-SemiBold',
                            fontSize: 45,
                            color: const Color(0xffffffff),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    thickness: 1,
                  ),

                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextResponsive(
                      'Price Breakdown',
                      style: TextStyle(
                        fontFamily: 'SofiaPro-SemiBold',
                        fontSize: 55,
                        color: const Color(0xff130f10),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    child: Center(
                        child: PieChart(
                      dataMap: dataMap,
                      animationDuration: Duration(milliseconds: 800),
                      chartLegendSpacing: 32.0,
                      chartRadius: MediaQuery.of(context).size.width / 2.7,
                      showChartValuesInPercentage: true,
                      showChartValues: true,
                      showChartValuesOutside: true,
                      chartValueBackgroundColor: Colors.white,
                      colorList: colorList,
                      showLegends: true,
                      legendPosition: LegendPosition.right,
                      decimalPlaces: 1,
                      showChartValueLabel: true,
                      initialAngle: 0,
                      chartValueStyle: defaultChartValueStyle.copyWith(
                        color: Colors.blueGrey[900].withOpacity(0.9),
                      ),
                      chartType: ChartType.ring,
                    )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Ing extends StatelessWidget {
  final Color color;
  final String string;
  final String data;
  Ing({this.string, this.color, this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              // Adobe XD layer: 'Rectangle 9' (shape)
              Container(
                width: 25.0.h,
                height: 25.0.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(12.5, 12.5)),
                  color: color,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              TextResponsive(
                string,
                style: TextStyle(
                  fontFamily: 'SofiaPro',
                  fontSize: 45,
                  color: const Color(0xff130f10),
                  height: 1.3333333333333333,
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          TextResponsive(
            data,
            style: TextStyle(
              fontFamily: 'SofiaPro-Medium',
              fontSize: 45,
              color: const Color(0xcc130f10),
              height: 1.3333333333333333,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
