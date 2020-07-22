import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class Recipe extends StatefulWidget {
  @override
  _RecipeState createState() => _RecipeState();
}

class _RecipeState extends State<Recipe> {
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
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Image.asset('Assets/recipe_details/arrow.png'),
          title: TextResponsive(
            'Recipe',
            style: TextStyle(
              fontFamily: 'SofiaPro-SemiBold',
              fontSize: 50,
              color: const Color(0xff130f10),
              height: 1.2,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 50,
              child: Stack(
                children: <Widget>[
                  Image.asset(
                      'Assets/recipe_details/kisspng-pizza-margherita-bacon-delivery-cheese-pizza-menu-5b2597bcabaf52.8918615115291903327032.png'),
                  Image.asset(
                      'Assets/recipe_details/Place Your Image Here.png'),
                  Image.asset(
                      'Assets/recipe_details/Place Your Image Here.png'),
                  Image.asset(
                      'Assets/recipe_details/Place Your Image Here (Double Click to Edit)-1.png'),
                  Image.asset(
                      'Assets/recipe_details/Place Your Image Here (Double Click to Edit).png'),
                  Image.asset(
                      'Assets/recipe_details/Vector Smart Object (Double Click To Edit).png'),
                ],
              ),
            ),
            TextResponsive(
              'Tomotto pizza',
              style: TextStyle(
                fontFamily: 'SofiaPro-Bold',
                fontSize: 75.h,
                color: const Color(0xff130f10),
                height: 0.8,
              ),
              textAlign: TextAlign.left,
            ),
            TextResponsive(
              '35 - 40Minutes',
              style: TextStyle(
                fontFamily: 'SofiaPro-Medium',
                fontSize: 40.h,
                color: const Color(0x80282828),
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
            Container(
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
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        child: TextResponsive(
                          'Ingrediants',
                          style: TextStyle(
                            fontFamily: 'SofiaPro-SemiBold',
                            fontSize: 50,
                            color: const Color(0xffff718b),
                            height: 1.2,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        onTap: () {},
                      ),
                      GestureDetector(
                        child: TextResponsive(
                          'Method',
                          style: TextStyle(
                            fontFamily: 'SofiaPro-Medium',
                            fontSize: 50,
                            color: const Color(0x80130f10),
                            height: 1.2,
                          ),
                          textAlign: TextAlign.right,
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      // Adobe XD layer: 'checckmark_round.png' (shape)
                      Container(
                        width: 60.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(30.0, 30.0)),
                          border: Border.all(
                              width: 2.0, color: const Color(0x33130f10)),
                        ),
                      ),
                      TextResponsive(
                        'Keep track my leftovers',
                        style: TextStyle(
                          fontFamily: 'SofiaPro-Light',
                          fontSize: 40,
                          color: const Color(0xb3130f10),
                          height: 1.5,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  // Adobe XD layer: 'Rectangle 7 copy 21' (shape)
                  Container(
                    width: 800.0,
                    height: 140.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: const Color(0xffff718b),
                    ),
                    child: Text(
                      'Add to menu',
                      style: TextStyle(
                        fontFamily: 'SofiaPro-SemiBold',
                        fontSize: 45,
                        color: const Color(0xffffffff),
                        height: 1.3333333333333333,
                      ),
                      textAlign: TextAlign.center,
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
