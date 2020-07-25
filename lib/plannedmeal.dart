import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class Plannedmeal1 extends StatefulWidget {
  static const TextStyle optionStyle = TextStyle(
    fontFamily: 'SofiaPro-Medium',
    fontSize: 35,
    //  color: const Color(0x4d130f10),
  );

  @override
  _Plannedmeal1State createState() => _Plannedmeal1State();
}

class _Plannedmeal1State extends State<Plannedmeal1> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
          body: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 100,
                  child: Center(
                    child: TextResponsive(
                      'My planned meal',
                      style: TextStyle(
                        fontFamily: 'SofiaPro-SemiBold',
                        fontSize: 50,
                        color: Color(0xff130f10),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Planned_mealv1_card(
                    path:
                        'Assets/pmv2/1501791674-delish-chicken-curry-horizontal copy.png',
                    name: 'Mexican rice with meat',
                    star: 5,
                    price: 35,
                    steps: 5,
                    intgrediants: 12,
                    cost: 10,
                    loScore: 23,
                    hlthScore: 43,
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Color(0xffff7118b),
            unselectedItemColor: Color(0xff707070),
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                title: TextResponsive(
                  'Home',
                  style: Plannedmeal1.optionStyle,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                title: TextResponsive(
                  'Search',
                  style: Plannedmeal1.optionStyle,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.receipt,
                ),
                title: TextResponsive(
                  'Orders',
                  style: Plannedmeal1.optionStyle,
                  textAlign: TextAlign.left,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_box,
                ),
                title: TextResponsive(
                  'Profiles',
                  style: Plannedmeal1.optionStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Planned_mealv1_card extends StatelessWidget {
  final String path;
  final String name;
  final int star;
  final double price;
  final int steps;
  final int intgrediants;
  final int cost;
  final int loScore;
  final int hlthScore;
  Planned_mealv1_card(
      {this.path,
      this.name,
      this.star,
      this.price,
      this.steps,
      this.intgrediants,
      this.cost,
      this.hlthScore,
      this.loScore});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Image.asset(path),
            Positioned(
              top: 10,
              right: 10,
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextResponsive(
                        name,
                        style: TextStyle(
                          fontFamily: 'SofiaPro-SemiBold',
                          fontSize: 50,
                          color: const Color(0xff130f10),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Image.asset(
                            'Assets/pmv2/star copy -9.png',
                            height: 31.h,
                            width: 33.h,
                          ),
                          Image.asset(
                            'Assets/pmv2/star copy -9.png',
                            height: 31.h,
                            width: 33.h,
                          ),
                          Image.asset(
                            'Assets/pmv2/star copy -9.png',
                            height: 31.h,
                            width: 33.h,
                          ),
                          Image.asset(
                            'Assets/pmv2/star copy -9.png',
                            height: 31.h,
                            width: 33.h,
                          ),
                          Image.asset(
                            'Assets/pmv2/star copy -9.png',
                            height: 31.h,
                            width: 33.h,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  TextResponsive(
                    '\$$price',
                    style: TextStyle(
                      fontFamily: 'Gilroy-SemiBold',
                      fontSize: 70,
                      color: const Color(0xffff718b),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset(
              'Assets/pmv2/time copy 4.png',
              height: 45.h,
              width: 45.h,
            ),
            Image.asset(
              'Assets/pmv2/cooking copy 5.png',
              height: 45.h,
              width: 45.h,
            ),
            Image.asset(
              'Assets/pmv2/dollar copy 6.png',
              height: 45.h,
              width: 45.h,
            ),
          ],
        ),
        SizedBox(
          height: 7,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextResponsive(
              '$steps steps',
              style: TextStyle(
                fontFamily: 'SofiaPro',
                fontSize: 35,
                color: const Color(0xff130f10),
                height: 1.1314285278320313,
              ),
            ),
            TextResponsive(
              '$intgrediants Ingrediants',
              style: TextStyle(
                fontFamily: 'SofiaPro',
                fontSize: 35,
                color: const Color(0xff130f10),
                height: 1.1314285278320313,
              ),
            ),
            TextResponsive(
              '\$$cost cost ',
              style: TextStyle(
                fontFamily: 'SofiaPro',
                fontSize: 35,
                color: const Color(0xff130f10),
                height: 1.1314285278320313,
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
                color: Color(0x80d9f1f4),
                border: Border.all(width: 1.0, color: Color(0x809df4fa)),
              ),
              child: Center(
                child: TextResponsive(
                  '$loScore% leftover score',
                  style: TextStyle(
                    fontFamily: 'SofiaPro-Medium',
                    fontSize: 40,
                    color: Color(0xff55ccd4),
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
                border: Border.all(width: 1.0, color: const Color(0x809df4fa)),
              ),
              child: Center(
                child: TextResponsive(
                  '$hlthScore% Health score',
                  style: TextStyle(
                    fontFamily: 'SofiaPro-Medium',
                    fontSize: 40,
                    color: Color(0xff55ccd4),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
