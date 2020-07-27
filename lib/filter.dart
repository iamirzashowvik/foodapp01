import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class Filter_2 extends StatefulWidget {
  @override
  _Filter_2State createState() => _Filter_2State();
}

class _Filter_2State extends State<Filter_2> {
  int slidervalue = 6;
  int x;
  int selected = 1;
  bool heath = false;
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: 1920, // Optional
      width: 1080, // Optional
      allowFontScaling: true, // Optional
    );
    Color bc = Colors.black;
    Color dc = Colors.white;

    Color ac = Color(0xFFFE718B);
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
              "Filter",
              style: TextStyle(
                fontFamily: 'SofiaPro-SemiBold',
                fontSize: 50,
                color: Color(0xff130f10),
              ),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
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

                      InkWell(
                        onTap: () {
                          setState(() {
                            heath = !heath;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 60.h,
                              height: 60.0.h,
                              decoration: BoxDecoration(
                                color: heath ? Color(0xFFFE718B) : Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(30.0, 30.0)),
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
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
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
                      Container(
                        height: 50,
                        width: 1000,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: CircleAvatar(
                                  radius: 25,
                                  backgroundColor: selected == (index + 1)
                                      ? Color(0xFFFE718B)
                                      : Color(0xffffffff),
                                  child: Center(
                                    child: TextResponsive(
                                      '${index + 1}',
                                      style: TextStyle(
                                        fontFamily: 'SofiaPro',
                                        fontSize: 53,
                                        color: Color(0xff282828),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  selected = (index + 1);
                                });
                              },
                            );
                          },
                        ),
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
                      Container(
                        height: 150.h,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Diet_card(name: 'Vegetarian', color: dc),
                            Diet_card(name: 'Vegan', color: dc),
                            Diet_card(name: 'Paleo', color: dc),
                          ],
                        ),
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
                      Container(
                        height: 150.h,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            GestureDetector(
                                child: Diet_card(name: 'Dairy', color: dc)),
                            Diet_card(
                              name: 'Egg',
                              color: dc,
                            ),
                            Diet_card(
                              name: 'Gluten',
                              color: dc,
                            ),
                          ],
                        ),
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
  bool isSelect = false;
  Color _color = Color(0xFFFE718B);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelect = !isSelect;
        });
        print(isSelect);
      },
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Container(
          width: 300.0.w,
          height: 120.0.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: (isSelect) ? _color : Colors.white,
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
                color: (isSelect) ? Colors.white : Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

class Countbutton extends StatefulWidget {
  Countbutton({this.count, this.dc});
  final int count;
  final Color dc;
  int v;
  @override
  _CountbuttonState createState() => _CountbuttonState();
}

class _CountbuttonState extends State<Countbutton> {
  bool isSelect = false;

  Color _color = Color(0xFFFE718B);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          if (widget.count == widget.count) {
            isSelect = !isSelect;
          } else {
            isSelect = false;
          }
        });
        print(isSelect);
      },
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: CircleAvatar(
          radius: 25,
          backgroundColor: (isSelect) ? _color : Color(0xffffffff),
          child: Center(
            child: TextResponsive(
              '${widget.count}',
              style: TextStyle(
                fontFamily: 'SofiaPro',
                fontSize: 53,
                color: Color(0xff282828),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
