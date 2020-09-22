import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

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
        children: <Widget>[
          Stack(
            children: <Widget>[
//              Image.network(
//                path,
//                height: 517.h,
//                width: 1000,
//                // height: 100,
//              ),

              Container(
                height: 517.h,
                width: 1000,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10)),
                  //.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(path == null
                          ? 'https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/healthy-eating-ingredients-1296x728-header.jpg?w=1155&h=1528'
                          : path),
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                left: 0,
                bottom: -1,
                child: Container(
                  color: Colors.white,
                  width: 601.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: TextResponsive(
                              name.substring(0, 10),
                              style: TextStyle(
                                fontFamily: 'SofiaPro-SemiBold',
                                fontSize: 40,
                                color: const Color(0xff130f10),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Row(
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
                          ),
                        ],
                      ),
                      TextResponsive(
                        '\$$price',
                        style: TextStyle(
                          fontFamily: 'Gilroy-SemiBold',
                          fontSize: 50,
                          color: const Color(0xffff718b),
                        ),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                ),
              ),
//              Positioned(
//                right: 10,
//                bottom: 5,
//                child: TextResponsive(
//                  '\$$price',
//                  style: TextStyle(
//                    fontFamily: 'Gilroy-SemiBold',
//                    fontSize: 50,
//                    color: const Color(0xffff718b),
//                  ),
//                  textAlign: TextAlign.left,
//                ),
//              )
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
          isRemove
              ? Row(
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
              : Container(),
        ],
      ),
    );
  }
}

//
// Container(
//   decoration: BoxDecoration(
//     image: DecorationImage(
//         image: NetworkImage(gg.image ==
//                 null
//             ? 'https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/healthy-eating-ingredients-1296x728-header.jpg?w=1155&h=1528'
//             : gg.image),
//         fit: BoxFit.cover),
//   ),
// ),
