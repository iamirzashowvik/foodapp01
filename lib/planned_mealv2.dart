import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class Plannedmeal extends StatefulWidget {
  @override
  _PlannedmealState createState() => _PlannedmealState();
}

class _PlannedmealState extends State<Plannedmeal> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const TextStyle optionStyle = TextStyle(
    fontFamily: 'SofiaPro-Medium',
    fontSize: 35,
    //  color: const Color(0x4d130f10),
  );
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
                  height: 50,
                  child: Center(
                    child: TextResponsive(
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
                ),
                Divider(
                  thickness: .5,
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          color: Color(0xffffffff),
                          height: 1100.h,
                          width: 800.w,
                          child: Planned_mealv2_card(
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
                            isRemove: true,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
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
                  style: optionStyle,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                title: TextResponsive(
                  'Search',
                  style: optionStyle,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.receipt,
                ),
                title: TextResponsive(
                  'Orders',
                  style: optionStyle,
                  textAlign: TextAlign.left,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_box,
                ),
                title: TextResponsive(
                  'Profiles',
                  style: optionStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Planned_mealv2_card extends StatelessWidget {
  final String path;
  final String name;
  final int star;
  final double price;
  final int steps;
  final int intgrediants;
  final int cost;
  final int loScore;
  final int hlthScore;
  final bool isRemove;
  Planned_mealv2_card(
      {this.path,
      this.name,
      this.star,
      this.price,
      this.steps,
      this.intgrediants,
      this.cost,
      this.hlthScore,
      this.loScore,
      this.isRemove = true});
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: 1920, // Optional
      width: 1080, // Optional
      allowFontScaling: true,
    );
    return ResponsiveWidgets.builder(
      height: 1920, // Optional
      width: 1080,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset(
                path,
              ),
              Positioned(
                left: 0,
                bottom: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextResponsive(
                          name,
                          style: TextStyle(
                            fontFamily: 'SofiaPro-SemiBold',
                            fontSize: 40,
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
                  ],
                ),
              ),
              Positioned(
                right: 10,
                bottom: 5,
                child: TextResponsive(
                  '\$$price',
                  style: TextStyle(
                    fontFamily: 'Gilroy-SemiBold',
                    fontSize: 50,
                    color: const Color(0xffff718b),
                  ),
                  textAlign: TextAlign.left,
                ),
              )
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
                width: 280.0.w,
                height: 80.0.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Color(0x80d9f1f4),
                  border: Border.all(width: 1.0, color: Color(0x809df4fa)),
                ),
                child: Center(
                  child: TextResponsive(
                    '$loScore% leftover score',
                    style: TextStyle(
                      fontFamily: 'SofiaPro-Medium',
                      fontSize: 27,
                      color: Color(0xff55ccd4),
                    ),
                  ),
                ),
              ),
              Container(
                width: 280.0.w,
                height: 80.0.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: const Color(0x80d9f1f4),
                  border:
                      Border.all(width: 1.0, color: const Color(0x809df4fa)),
                ),
                child: Center(
                  child: TextResponsive(
                    '$hlthScore% Health score',
                    style: TextStyle(
                      fontFamily: 'SofiaPro-Medium',
                      fontSize: 27,
                      color: Color(0xff55ccd4),
                    ),
                  ),
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
                    SizedBox(
                      width: 10,
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
                    SizedBox(
                      width: 10,
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
          )
        ],
      ),
    );
  }
}
