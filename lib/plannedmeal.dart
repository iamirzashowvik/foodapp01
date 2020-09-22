import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project01withsauiux/recipe_notes.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import 'api_response/recipe_v1.dart';

class Plannedmeal1 extends StatefulWidget {
  static const TextStyle optionStyle = TextStyle(
    fontFamily: 'SofiaPro-Medium',
    fontSize: 35,
    //  color: const Color(0x4d130f10),
  );

  @override
  _Plannedmeal1State createState() => _Plannedmeal1State();
}

class _Plannedmeal1State extends State<Plannedmeal1> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  RecipeV1 _recipeV1;
  void getData() async {
    Dio dio = Dio();
    Response r =
        await dio.get('https://pantryrecipe.herokuapp.com/api/v1/recipes.json');
    print(r.data);
    setState(() {
      _recipeV1 = recipeV1FromJson(r.toString());
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

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
                  height: 50,
                  child: Center(
                    child: TextResponsive(
                      'My planned meal',
                      style: TextStyle(
                        fontFamily: 'SofiaPro-SemiBold',
                        fontSize: 50,
                        color: Color(0xff130f10),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Divider(
                  thickness: .5,
                ),
                _recipeV1 == null
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10),
                          child: Container(
                            height: 10000,
                            width: 1000.w,
                            child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: _recipeV1.recipe.length,
                              itemBuilder: (BuildContext context, int index) {
                                var gg = _recipeV1.recipe[index];
                                print(index);
                                return Padding(
                                  padding: EdgeInsets.symmetric(vertical: 30.h),
                                  child: Column(
                                    children: <Widget>[
                                      Stack(
                                        children: <Widget>[
                                          Image.network(gg.image == null
                                              ? 'https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/healthy-eating-ingredients-1296x728-header.jpg?w=1155&h=1528'
                                              : gg.image),

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

                                          // gg.image == null
                                          // ? 'https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/healthy-eating-ingredients-1296x728-header.jpg?w=1155&h=1528'
                                          // : gg.image
                                          Positioned(
                                            top: 10,
                                            right: 10,
                                            child: Column(
                                              children: <Widget>[
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      print('work');

                                                      _recipeV1.recipe
                                                          .removeAt(index);
                                                    });
                                                  },
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.white,
                                                    child: Icon(
                                                      Icons.delete,
                                                      color: Colors.red,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                GestureDetector(
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.white,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.green,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Positioned(
                                            left: 0,
                                            bottom: -1,
                                            child: Container(
                                              color: Colors.white,
//                                              decoration: BoxDecoration(
////                                                gradient: LinearGradient(
////                                                  colors: [
////                                                    Colors.transparent,
////                                                    Colors.white
////                                                  ],
////                                                  // stops: [.2, 1],
////                                                  begin: Alignment.topCenter,
////                                                  end: Alignment.bottomCenter,
////                                                ),
//                                                  ),
                                              width: 1000.w,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: <Widget>[
                                                      TextResponsive(
                                                        gg.title
                                                            .substring(0, 5),
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'SofiaPro-SemiBold',
                                                          fontSize: 50,
                                                          color: const Color(
                                                              0xff130f10),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 3,
                                                                bottom: 3),
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
//                                                SizedBox(
//                                                  width: 100,
//                                                ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 50.w),
                                                    child: TextResponsive(
                                                      '\$${gg.pricePerServing == null ? 35.0 : gg.pricePerServing}',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'Gilroy-SemiBold',
                                                        fontSize: 70,
                                                        color: const Color(
                                                            0xffff718b),
                                                      ),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          TextResponsive(
                                            '5 steps',
                                            style: TextStyle(
                                              fontFamily: 'SofiaPro',
                                              fontSize: 35,
                                              color: const Color(0xff130f10),
                                              height: 1.1314285278320313,
                                            ),
                                          ),
                                          TextResponsive(
                                            '10 Ingrediants',
                                            style: TextStyle(
                                              fontFamily: 'SofiaPro',
                                              fontSize: 35,
                                              color: const Color(0xff130f10),
                                              height: 1.1314285278320313,
                                            ),
                                          ),
                                          TextResponsive(
                                            '10 cost ',
                                            style: TextStyle(
                                              fontFamily: 'SofiaPro',
                                              fontSize: 35,
                                              color: const Color(0xff130f10),
                                              height: 1.1314285278320313,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Container(
                                            width: 430.0.w,
                                            height: 120.0.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                              color: Color(0x80d9f1f4),
                                              border: Border.all(
                                                  width: 1.0,
                                                  color: Color(0x809df4fa)),
                                            ),
                                            child: Center(
                                              child: TextResponsive(
                                                '20% leftover score',
                                                style: TextStyle(
                                                  fontFamily: 'SofiaPro-Medium',
                                                  fontSize: 40,
                                                  color: Color(0xff55ccd4),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 430.0.w,
                                            height: 120.0.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                              color: const Color(0x80d9f1f4),
                                              border: Border.all(
                                                  width: 1.0,
                                                  color:
                                                      const Color(0x809df4fa)),
                                            ),
                                            child: Center(
                                              child: TextResponsive(
                                                '${gg.healthScore == null ? 25 : gg.healthScore}% Health score',
                                                style: TextStyle(
                                                  fontFamily: 'SofiaPro-Medium',
                                                  fontSize: 40,
                                                  color: Color(0xff55ccd4),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Color(0xffff7118b),
            type: BottomNavigationBarType.fixed,
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
                  style: Plannedmeal1.optionStyle,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                title: TextResponsive(
                  'Search',
                  style: Plannedmeal1.optionStyle,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.receipt,
                ),
                title: TextResponsive(
                  'Orders',
                  style: Plannedmeal1.optionStyle,
                  textAlign: TextAlign.left,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_box,
                ),
                title: TextResponsive(
                  'Profiles',
                  style: Plannedmeal1.optionStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class Planned_mealv1_card extends StatefulWidget {
//   final String path;
//   final String name;
//   final int star;
//   final double price;
//   final int steps;
//   final int intgrediants;
//   final int cost;
//   final int loScore;
//   final int id;
//   final int hlthScore;
//   Planned_mealv1_card(
//       {this.path,
//       this.id,
//       this.name,
//       this.star,
//       this.price,
//       this.steps,
//       this.intgrediants,
//       this.cost,
//       this.hlthScore,
//       this.loScore});

//   @override
//   _Planned_mealv1_cardState createState() => _Planned_mealv1_cardState();
// }

// class _Planned_mealv1_cardState extends State<Planned_mealv1_card> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Stack(
//           children: <Widget>[
//             Image.network(widget.path),
//             Positioned(
//               top: 10,
//               right: 10,
//               child: Column(
//                 children: <Widget>[
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {});
//                     },
//                     child: CircleAvatar(
//                       backgroundColor: Colors.white,
//                       child: Icon(
//                         Icons.delete,
//                         color: Colors.red,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   GestureDetector(
//                     child: CircleAvatar(
//                       backgroundColor: Colors.white,
//                       child: Icon(
//                         Icons.check,
//                         color: Colors.green,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Positioned(
//               left: 0,
//               bottom: 0,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: <Widget>[
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       TextResponsive(
//                         widget.name,
//                         style: TextStyle(
//                           fontFamily: 'SofiaPro-SemiBold',
//                           fontSize: 50,
//                           color: const Color(0xff130f10),
//                         ),
//                       ),
//                       Row(
//                         children: <Widget>[
//                           Image.asset(
//                             'Assets/pmv2/star copy -9.png',
//                             height: 31.h,
//                             width: 33.h,
//                           ),
//                           Image.asset(
//                             'Assets/pmv2/star copy -9.png',
//                             height: 31.h,
//                             width: 33.h,
//                           ),
//                           Image.asset(
//                             'Assets/pmv2/star copy -9.png',
//                             height: 31.h,
//                             width: 33.h,
//                           ),
//                           Image.asset(
//                             'Assets/pmv2/star copy -9.png',
//                             height: 31.h,
//                             width: 33.h,
//                           ),
//                           Image.asset(
//                             'Assets/pmv2/star copy -9.png',
//                             height: 31.h,
//                             width: 33.h,
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     width: 100,
//                   ),
//                   TextResponsive(
//                     '\$${widget.price}',
//                     style: TextStyle(
//                       fontFamily: 'Gilroy-SemiBold',
//                       fontSize: 70,
//                       color: const Color(0xffff718b),
//                     ),
//                     textAlign: TextAlign.left,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//         SizedBox(
//           height: 15,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: <Widget>[
//             Image.asset(
//               'Assets/pmv2/time copy 4.png',
//               height: 45.h,
//               width: 45.h,
//             ),
//             Image.asset(
//               'Assets/pmv2/cooking copy 5.png',
//               height: 45.h,
//               width: 45.h,
//             ),
//             Image.asset(
//               'Assets/pmv2/dollar copy 6.png',
//               height: 45.h,
//               width: 45.h,
//             ),
//           ],
//         ),
//         SizedBox(
//           height: 7,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: <Widget>[
//             TextResponsive(
//               '${widget.steps} steps',
//               style: TextStyle(
//                 fontFamily: 'SofiaPro',
//                 fontSize: 35,
//                 color: const Color(0xff130f10),
//                 height: 1.1314285278320313,
//               ),
//             ),
//             TextResponsive(
//               '${widget.intgrediants} Ingrediants',
//               style: TextStyle(
//                 fontFamily: 'SofiaPro',
//                 fontSize: 35,
//                 color: const Color(0xff130f10),
//                 height: 1.1314285278320313,
//               ),
//             ),
//             TextResponsive(
//               '\$${widget.cost} cost ',
//               style: TextStyle(
//                 fontFamily: 'SofiaPro',
//                 fontSize: 35,
//                 color: const Color(0xff130f10),
//                 height: 1.1314285278320313,
//               ),
//             ),
//           ],
//         ),
//         SizedBox(
//           height: 15,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             Container(
//               width: 430.0.w,
//               height: 120.0.h,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15.0),
//                 color: Color(0x80d9f1f4),
//                 border: Border.all(width: 1.0, color: Color(0x809df4fa)),
//               ),
//               child: Center(
//                 child: TextResponsive(
//                   '${widget.loScore}% leftover score',
//                   style: TextStyle(
//                     fontFamily: 'SofiaPro-Medium',
//                     fontSize: 40,
//                     color: Color(0xff55ccd4),
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               width: 430.0.w,
//               height: 120.0.h,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15.0),
//                 color: const Color(0x80d9f1f4),
//                 border: Border.all(width: 1.0, color: const Color(0x809df4fa)),
//               ),
//               child: Center(
//                 child: TextResponsive(
//                   '${widget.hlthScore}% Health score',
//                   style: TextStyle(
//                     fontFamily: 'SofiaPro-Medium',
//                     fontSize: 40,
//                     color: Color(0xff55ccd4),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

// Container(
//                                   color: Color(0xffffffff),
//                                   height: 1000.h,
//                                   width: 1000.w,
//                                   child: Planned_mealv1_card(
//                                     path: gg.image == null
//                                         ? 'https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/healthy-eating-ingredients-1296x728-header.jpg?w=1155&h=1528'
//                                         : gg.image,
//                                     name: gg.title,
//                                     star: 5,
//                                     id: gg.id,
//                                     price: gg.pricePerServing == null
//                                         ? 35.0
//                                         : gg.pricePerServing,
//                                     steps: 5,
//                                     intgrediants: 12,
//                                     cost: 10,
//                                     loScore: 23,
//                                     hlthScore: gg.healthScore == null
//                                         ? 25
//                                         : gg.healthScore,
//                                   ),
//                                 );
