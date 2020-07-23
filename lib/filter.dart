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

      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 50,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 18,
                    ),
                    //Image.asset('Assets/filter/arrow.png'),
                    Icon(Icons.arrow_back),
                    SizedBox(
                      width: 150,
                    ),
                    TextResponsive(
                      'Filter',
                      style: TextStyle(
                        fontFamily: 'SofiaPro-SemiBold',
                        fontSize: 50,
                        color: Color(0xff130f10),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
              ),
              Padding(
                padding: EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextResponsive(
                      'Health',
                      style: TextStyle(
                        fontFamily: 'SofiaPro-Medium',
                        fontSize: 50.0,
                        color: const Color(0xff130f10),
                      ),
                    ),

                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFFFEA6B6),
                        activeTrackColor: Color(0xFFFE718B),
                        thumbColor: Color(0xFFFE718B),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        // Adobe XD layer: 'Ellipse 512' (shape)
                        Container(
                          width: 60.h,
                          height: 60.0.h,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(30.0, 30.0)),
                            border: Border.all(
                                width: 2.0, color: Color(0x33000000)),
                          ),
                        ),
                        SizedBox(
                          width: 20,
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
                    SizedBox(
                      height: 20,
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
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        // Adobe XD layer: 'Rectangle 7 copy 11' (shape)
                        Countbutton(1),
                        Countbutton(2),
                        Countbutton(3),
                        Countbutton(4),
                        Countbutton(5),
                        Countbutton(6),
                        Countbutton(7),
                        Countbutton(8),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextResponsive(
                      'Diet',
                      style: TextStyle(
                        fontFamily: 'SofiaPro-Medium',
                        fontSize: 50,
                        color: const Color(0xff130f10),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      children: <Widget>[
                        Diet_card(name: 'Vegetarian', color: Color(0xFFFE718B)),
                        Diet_card(name: 'Vegan', color: Color(0xFFFE718B)),
                        Diet_card(name: 'Paleo', color: Colors.white),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextResponsive(
                      'Intolerance',
                      style: TextStyle(
                        fontFamily: 'SofiaPro-Medium',
                        fontSize: 50,
                        color: const Color(0xff130f10),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      children: <Widget>[
                        Diet_card(name: 'Dairy', color: Color(0xFFFE718B)),
                        Diet_card(
                          name: 'Egg',
                          color: Colors.white,
                        ),
                        Diet_card(name: 'Gluten', color: Color(0xFFFE718B)),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextResponsive(
                      'Excluded Ingredients',
                      style: TextStyle(
                        fontFamily: 'SofiaPro-Medium',
                        fontSize: 50,
                        color: const Color(0xff130f10),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    ExcludedING(
                      name: 'Cucumber',
                    ),
                    ExcludedING(
                      name: 'Cheze',
                    ),
                    ExcludedING(
                      name: 'Brinjal',
                    ),
                    // Adobe XD layer: 'Rectangle 4 copy 5' (shape)
                    Container(
                      width: 1005.0.h,
                      height: 150.0.h,
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
                                borderRadius: BorderRadius.circular(15.0),
                                color: const Color(0xfffe718b),
                              ),
                              child: Center(
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
                          ),
                        ],
                      ),
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

class ExcludedING extends StatelessWidget {
  final String name;
  ExcludedING({this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          TextResponsive(
            name,
            style: TextStyle(
              fontFamily: 'SofiaPro-Medium',
              fontSize: 45,
              color: Color(0xfffe718b),
            ),
            textAlign: TextAlign.left,
          ),
          // Adobe XD layer: 'Rectangle 7 copy 8' (shape)
          Container(
            width: 80.0.h,
            height: 80.0.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(40.0, 40.0)),
              color: const Color(0xfffe718b),
            ),
            child: Image.asset('Assets/filter/minus.png.png'),
          ),
        ],
      ),
    );
  }
}

class Diet_card extends StatefulWidget {
  Diet_card({
    @required this.name,
    @required this.color,
  });
  final String name;
  final Color color;

  @override
  _Diet_cardState createState() => _Diet_cardState();
}

class _Diet_cardState extends State<Diet_card> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Container(
        width: 300.0.w,
        height: 120.0.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: widget.color,
          boxShadow: [
            BoxShadow(
              color: const Color(0x0d130f10),
              offset: Offset(4, 6.928203105926514),
              blurRadius: 18,
            ),
          ],
        ),
        child: Center(
          child: TextResponsive(
            widget.name,
            style: TextStyle(
              fontFamily: 'SofiaPro',
              fontSize: 40,
              color: (widget.color == Color(0xfffe718b))
                  ? Colors.white
                  : Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class Countbutton extends StatelessWidget {
  Countbutton(this.count);
  final int count;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0.h,
      height: 100.0.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.elliptical(50.0, 50.0)),
        color: const Color(0xffffffff),
        boxShadow: [
          BoxShadow(
            color: const Color(0x0d130f10),
            offset: Offset(4, 6.928203105926514),
            blurRadius: 18,
          ),
        ],
      ),
      child: Center(
        child: TextResponsive(
          '$count',
          style: TextStyle(
            fontFamily: 'SofiaPro',
            fontSize: 53,
            color: Color(0xff282828),
          ),
        ),
      ),
    );
  }
}
