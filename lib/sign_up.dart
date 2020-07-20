import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class SignUp extends StatelessWidget {
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
      allowFontScaling: true, // Optional(
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  height: 200.h,
                  child: Stack(
                    children: <Widget>[
                      Image(
                        image: AssetImage('Assets/signUp/main.png'),
                      ),
                      Image(
                        image: AssetImage('Assets/signUp/mainleft.png'),
                      ),
                      Image(
                        image: AssetImage('Assets/signUp/mainleft.png'),
                      ),
                    ],
                  ),
                ),
                Image(
                  height: 300.h,
                  width: 300.h,
                  image: AssetImage('Assets/signUp/grow-shop.png'),
                ),
                TextResponsive(
                  'Sign Up',
                  style: TextStyle(
                    fontFamily: 'SofiaPro-Bold',
                    fontSize: 80,
                    color: const Color(0xff100603),
                    height: 1.2,
                  ),
                  textAlign: TextAlign.left,
                ),
                // Adobe XD layer: 'Rectangle 2 copy 5' (shape)
                Signupbutton(
                  color: Color(0xFF3B5998),
                  text: 'Sign up with Facebook',
                  path: 'Assets/signUp/facebook.png',
                ),

                Signupbutton(
                  color: Color(0xFFEA4235),
                  text: 'Sign up with Google',
                  path: 'Assets/signUp/Google.png.png',
                ),
                Signupbutton(
                  color: Color(0xFF00ACEE),
                  text: 'Sign up with Twitter',
                  path: 'Assets/signUp/twitter.png.png',
                ),
                Container(
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Image.asset(
                          'Assets/signUp/Place Your Image Here-3.png',
                          height: 200,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: <Widget>[
                            TextResponsive(
                              'Already have an acount ?',
                              style: TextStyle(
                                fontFamily: 'SofiaPro-Medium',
                                fontSize: 40,
                                color: const Color(0xff130f10),
                                height: 1.5,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            TextResponsive(
                              'Sign in',
                              style: TextStyle(
                                fontFamily: 'SofiaPro-Medium',
                                fontSize: 45,
                                color: const Color(0xffff718b),
                                height: 1.3333333333333333,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Image.asset(
                          'Assets/signUp/Place Your Image Here-3.png',
                          height: 200,
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

class Signupbutton extends StatelessWidget {
  Signupbutton(
      {@required this.color, @required this.text, @required this.path});
  final String text;
  final Color color;
  final String path;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsResponsive.all(19.0),
      child: Container(
        child: Padding(
          padding:
              EdgeInsetsResponsive.symmetric(horizontal: 100, vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextResponsive(
                text,
                style: TextStyle(
                  fontFamily: 'SofiaPro-Medium',
                  fontSize: 40,
                  color: Colors.white,
                  height: 1.5,
                ),
                textAlign: TextAlign.left,
              ),
              // Adobe XD layer: 'Ellipse 946' (shape)
              Container(
                child: Image.asset(
                  path,
                  height: 40.h,
                ),
                width: 100.0.h,
                height: 100.0.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(50.0, 50.0)),
                  color: const Color(0xfff5f6f9),
                ),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: color,
          boxShadow: [
            BoxShadow(
              color: const Color(0x0d000000),
              offset: Offset(-2.4492937051703357e-16, 4),
              blurRadius: 139,
            ),
          ],
        ),
      ),
    );
  }
}
