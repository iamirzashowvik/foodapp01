import 'package:flutter/material.dart';
import 'package:project01withsauiux/widgets/reusablecard.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                  padding: EdgeInsets.all(20.0),
                  child: Container(
                    height: 50,
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
                        CircleAvatar(
                            radius: 55.h,
                            backgroundColor: Color(0x1aff718b),
                            child: Image.asset(
                              'Assets/home/filter.png.png',
                              height: 38.h,
                              width: 38.h,
                            )),
                      ],
                    ),
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Container(
                    // width: 1005.0,
                    // height: 130.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      //   color: const Color(0xffffffff),
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
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        child: HomeIcon(
                          title: "sometitle",
                          icon: 'Assets/home/healthy.png.png',
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
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
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          height: 872.h,
                          width: 673.w,
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
                            isRemove: false,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: TextResponsive(
                'Home',
                style: TextStyle(
                  fontFamily: 'SofiaPro-Medium',
                  fontSize: 35,
                  color: const Color(0x4d130f10),
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              title: TextResponsive(
                'Search',
                style: TextStyle(
                  fontFamily: 'SofiaPro-Medium',
                  fontSize: 35,
                  color: const Color(0x4d130f10),
                ),
                textAlign: TextAlign.left,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.reorder,
              ),
              title: TextResponsive(
                'Orders',
                style: TextStyle(
                  fontFamily: 'SofiaPro-Medium',
                  fontSize: 35,
                  color: const Color(0x4d130f10),
                ),
                textAlign: TextAlign.left,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_box,
              ),
              title: TextResponsive(
                'Profiles',
                style: TextStyle(
                  fontFamily: 'SofiaPro-Medium',
                  fontSize: 35,
                  color: const Color(0x4d130f10),
                ),
                textAlign: TextAlign.left,
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
