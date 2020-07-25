import 'package:flutter/material.dart';
import 'package:project01withsauiux/widgets/reusablecard.dart';
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
                  height: 100,
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
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Planned_mealv2_card(
                    path:
                        'Assets/pmv2/1501791674-delish-chicken-curry-horizontal copy.png',
                    name: 'Mwxican rice with meat',
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
