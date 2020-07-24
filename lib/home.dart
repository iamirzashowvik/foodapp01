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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextResponsive(
          'Home',
          style: TextStyle(
            fontFamily: 'SofiaPro-Bold',
            fontSize: 80,
            color: const Color(0xff130f10),
          ),
          textAlign: TextAlign.left,
        ),
        actions: <Widget>[
          Container(
            width: 110.0.h,
            height: 110.0.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(55.0, 55.0)),
              color: const Color(0x1aff718b),
            ),
            child: Container(
              width: 38.0.h,
              height: 38.0.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Assets/home/filter.png.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            // width: 1005.0,
            // height: 130.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: const Color(0xffffffff),
              boxShadow: [
                BoxShadow(
                  color: Color(0x0d130f10),
                  offset: Offset(4, 6.928203105926514),
                  blurRadius: 125,
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
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
          TextResponsive(
            'Max 15 min total time ',
            style: TextStyle(
              fontFamily: 'SofiaPro-SemiBold',
              fontSize: 50,
              color: const Color(0xff130f10),
            ),
            textAlign: TextAlign.left,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
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
                    isRemove: false,
                  ),
                );
              },
            ),
          ),
        ],
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
