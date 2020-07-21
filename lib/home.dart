import 'package:flutter/material.dart';
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
            height: 0.75,
          ),
          textAlign: TextAlign.left,
        ),
        actions: <Widget>[
          // Adobe XD layer: 'Rectangle 3' (shape)
          Container(
            width: 110.0.h,
            height: 110.0.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(55.0, 55.0)),
              color: const Color(0x1aff718b),
            ),
            child: // Adobe XD layer: 'filter.png' (shape)
                Container(
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
            width: 1005.0,
            height: 130.0,
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
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.search,
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              GestureDetector(
                child: Column(
                  children: <Widget>[
                    // Adobe XD layer: 'Rectangle 5' (shape)
                    Container(
                      width: 140.0.h,
                      height: 140.0.h,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(70.0, 70.0)),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x0d130f10),
                            offset: Offset(4, 6.928203105926514),
                            blurRadius: 125,
                          ),
                        ],
                      ),
                      child: Image.asset('Assets/home/healthy.png.png'),
                    ),
                    TextResponsive(
                      'Healthy',
                      style: TextStyle(
                        fontFamily: 'SofiaPro-Medium',
                        fontSize: 40,
                        color: const Color(0xff130f10),
                        height: 1.5,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              )
            ],
          ),
          TextResponsive(
            'Max 15 min total time ',
            style: TextStyle(
              fontFamily: 'SofiaPro-SemiBold',
              fontSize: 50,
              color: const Color(0xff130f10),
              height: 1.2,
            ),
            textAlign: TextAlign.left,
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
    );
  }
}