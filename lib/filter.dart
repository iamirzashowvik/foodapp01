import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class Filter_2 extends StatefulWidget {
  @override
  _Filter_2State createState() => _Filter_2State();
}

class _Filter_2State extends State<Filter_2> {
  int slidervalue = 6;
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
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Image.asset('Assets/filter/arrow.png'),
          title: TextResponsive(
            'Filter',
            style: TextStyle(
              fontFamily: 'SofiaPro-SemiBold',
              fontSize: 50.h,
              color: const Color(0xff130f10),
              height: 1.2,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: Column(
          children: <Widget>[
            TextResponsive(
              'Health',
              style: TextStyle(
                fontFamily: 'SofiaPro-Medium',
                fontSize: 50.0,
                color: const Color(0xff130f10),
                height: 1.2,
              ),
              textAlign: TextAlign.left,
            ),

            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                inactiveTrackColor: Color(0xFFFEA6B6),
                activeTrackColor: Color(0xFFFE718B),
                thumbColor: Color(0xFFFE718B),
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
              ),
              child: Slider(
                value: slidervalue.toDouble(),
                min: 0,
                max: 10,
                onChanged: (double newValue) {
                  setState(() {
                    slidervalue = newValue.round();
                  });
                },
              ),
            ),

            Row(
              children: <Widget>[
                // Adobe XD layer: 'Ellipse 512' (shape)
                Container(
                  width: 60.h,
                  height: 60.0.h,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(30.0, 30.0)),
                    border:
                        Border.all(width: 2.0, color: const Color(0x33000000)),
                  ),
                ),
                TextResponsive(
                  'Make me healthier',
                  style: TextStyle(
                    fontFamily: 'SofiaPro-Light',
                    fontSize: 35,
                    color: const Color(0xb3130f10),
                    height: 1.7142857142857142,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            TextResponsive(
              'Household sizes',
              style: TextStyle(
                fontFamily: 'SofiaPro-Medium',
                fontSize: 50.0,
                color: const Color(0xff130f10),
                height: 1.2,
              ),
              textAlign: TextAlign.left,
            ),
            Row(
              children: <Widget>[
                // Adobe XD layer: 'Rectangle 7 copy 11' (shape)
                Container(
                  width: 100.0.h,
                  height: 100.0.h,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(50.0, 50.0)),
                    color: const Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x0d130f10),
                        offset: Offset(4, 6.928203105926514),
                        blurRadius: 18,
                      ),
                    ],
                  ),
                  child: Text(
                    '1',
                    style: TextStyle(
                      fontFamily: 'SofiaPro',
                      fontSize: 40,
                      color: const Color(0xff282828),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'Diet',
              style: TextStyle(
                fontFamily: 'SofiaPro-Medium',
                fontSize: 50.h,
                color: const Color(0xff130f10),
                height: 1.2,
              ),
              textAlign: TextAlign.left,
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 300.0.w,
                  height: 120.0.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: const Color(0xfffe718b),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x0d130f10),
                        offset: Offset(4, 6.928203105926514),
                        blurRadius: 18,
                      ),
                    ],
                  ),
                  child: TextResponsive(
                    'Vegetarian',
                    style: TextStyle(
                      fontFamily: 'SofiaPro',
                      fontSize: 40,
                      color: const Color(0xfff7f7fa),
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            TextResponsive(
              'Intolerances',
              style: TextStyle(
                fontFamily: 'SofiaPro-Medium',
                fontSize: 50,
                color: const Color(0xff130f10),
                height: 1.2,
              ),
              textAlign: TextAlign.left,
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 300.0.w,
                  height: 120.0.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: const Color(0xfffe718b),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x0d130f10),
                        offset: Offset(4, 6.928203105926514),
                        blurRadius: 18,
                      ),
                    ],
                  ),
                  child: TextResponsive(
                    'Dairy',
                    style: TextStyle(
                      fontFamily: 'SofiaPro',
                      fontSize: 40,
                      color: const Color(0xfff7f7fa),
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            TextResponsive(
              'Excluded Ingredients',
              style: TextStyle(
                fontFamily: 'SofiaPro-Medium',
                fontSize: 50,
                color: const Color(0xff130f10),
                height: 1.2,
              ),
              textAlign: TextAlign.left,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextResponsive(
                  'Cucumber',
                  style: TextStyle(
                    fontFamily: 'SofiaPro-Medium',
                    fontSize: 45,
                    color: const Color(0xfffe718b),
                    height: 1.3333333333333333,
                  ),
                  textAlign: TextAlign.left,
                ),
                // Adobe XD layer: 'Rectangle 7 copy 8' (shape)
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(40.0, 40.0)),
                    color: const Color(0xfffe718b),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x0d130f10),
                        offset: Offset(4, 6.928203105926514),
                        blurRadius: 18,
                      ),
                    ],
                  ),
                  child: Image.asset('Assets/filter/minus.png.png'),
                ),
              ],
            ),
            // Adobe XD layer: 'Rectangle 4 copy 5' (shape)
            Container(
              width: 1005.0,
              height: 150.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x0d130f10),
                    offset: Offset(4, 6.928203105926514),
                    blurRadius: 125,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  TextResponsive(
                    'Excluded Ingredient',
                    style: TextStyle(
                      fontFamily: 'SofiaPro',
                      fontSize: 40,
                      color: const Color(0x80130f10),
                      height: 1.5,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  // Adobe XD layer: 'Rectangle 7 copy 16' (shape)
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 230.0.w,
                      height: 100.0.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: const Color(0xfffe718b),
                      ),
                      child: TextResponsive(
                        'Add',
                        style: TextStyle(
                          fontFamily: 'SofiaPro',
                          fontSize: 40,
                          color: const Color(0xfff7f7fa),
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
