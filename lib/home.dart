import 'package:flutter/material.dart';
import 'package:project01withsauiux/widgets/reusablecard.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import 'filter.dart';
import 'main.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            height: 3000,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                  child: Container(
                    height: 35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        TextResponsive(
                          'Home',
                          style: TextStyle(
                            fontFamily: 'SofiaPro-SemiBold',
                            fontSize: 50,
                            color: const Color(0xff130f10),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'filter');
                          },
                          child: CircleAvatar(
                              radius: 55.h,
                              backgroundColor: Color(0x1aff718b),
                              child: Image.asset(
                                'Assets/home/filter.png.png',
                                height: 38.h,
                                width: 38.h,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  thickness: 0.5,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xffffffff),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: ' Search for recipe',
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
                Container(
                    height: 250.h,
                    child: Row(
                      children: <Widget>[
                        GestureDetector(
                          child: HomeIcon(
                            title: "Healthy",
                            icon: 'Assets/home/healthy.png.png',
                          ),
                        ),
                        GestureDetector(
                          child: HomeIcon(
                            title: "Desserts",
                            icon: 'Assets/home/Desserts.png.png',
                          ),
                        ),
                        GestureDetector(
                          child: HomeIcon(
                            title: "Ingredients",
                            icon: 'Assets/home/Ingredients.png.png',
                          ),
                        ),
                        GestureDetector(
                          child: HomeIcon(
                            title: "Cusine",
                            icon: 'Assets/home/Cusine.png.png',
                          ),
                        ),
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                  child: TextResponsive(
                    'Max 15 min total time ',
                    style: TextStyle(
                      fontFamily: 'SofiaPro-SemiBold',
                      fontSize: 50,
                      color: const Color(0xff130f10),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                  child: Container(
                    width: 3000,
                    height: 872.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Container(
                            color: Color(0xffffffff),
                            height: 872.h,
                            width: 600.w,
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
                              isRemove: false,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                  child: TextResponsive(
                    'Max 5 Ingredients ',
                    style: TextStyle(
                      fontFamily: 'SofiaPro-SemiBold',
                      fontSize: 50,
                      color: const Color(0xff130f10),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                  child: Container(
                    width: 3000,
                    height: 872.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Container(
                            color: Color(0xffffffff),
                            height: 872.h,
                            width: 600.w,
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
                              isRemove: false,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
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
    );
  }
}

class HomeIcon extends StatelessWidget {
  const HomeIcon({this.icon, this.title});
  final String title;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Image.asset(
              icon,
              width: 58.h,
              height: 54.h,
            ),
          ),
          TextResponsive(
            title,
            style: TextStyle(
              fontFamily: 'SofiaPro-Medium',
              fontSize: 40,
              color: const Color(0xff130f10),
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
