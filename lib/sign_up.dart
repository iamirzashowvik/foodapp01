import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project01withsauiux/home.dart';
import 'package:project01withsauiux/sign_in.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import 'package:progress_dialog/progress_dialog.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String pass;
  String name;
  bool obs = true;
  @override
  Widget build(BuildContext context) {
    final ProgressDialog pr = ProgressDialog(
      context,
      type: ProgressDialogType.Normal,
      isDismissible: true,

      /// your body here
      customBody: LinearProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
        backgroundColor: Colors.white,
      ),
    );
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
        body: SingleChildScrollView(
          padding: EdgeInsets.all(8.0),
          child: Container(
            height: 850,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Flexible(
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: -362.h,
                          left: 40.w,
                          child: Image.asset(
                            'Assets/signUp/main.png',
                            height: 881.h,
                            width: 888.w,
                          ),
                        ),
                        Positioned(
                          top: -100.06.h,
                          left: 780.62.w,
                          child: Image.asset(
                            'Assets/signUp/mainleft.png',
                            height: 408.h,
                            width: 858.w,
                          ),
                        ),
                        Positioned(
                          top: -50.06.h,
                          left: -25,
                          child: Image.asset(
                            'Assets/signUp/mainleft.png',
                            height: 450.h,
                            width: 858.w,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
//                SizedBox(
//                  height: 25,
//                ),
                Column(
                  children: <Widget>[
                    Image(
                      height: 200.h,
                      width: 200.w,
                      image: AssetImage('Assets/signUp/grow-shop.png'),
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    TextResponsive(
                      'Sign Up',
                      style: TextStyle(
                        fontFamily: 'SofiaPro-Bold',
                        fontSize: 70,
                        color: const Color(0xff100603),
                      ),
                    ),
                  ],
                ),
                // Adobe XD layer: 'Rectangle 2 copy 5' (shape)
                // SizedBox(
                //   height: 20,
                // ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: 'Email Address',
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: TextField(
                        obscureText: obs,
                        onChanged: (value) {
                          pass = value;
                        },
                        decoration: InputDecoration(
                          hintText: 'Password',
                          suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (obs == true) {
                                    obs = false;
                                  } else {
                                    obs = true;
                                  }
                                });
                              },
                              child: Icon(Icons.remove_red_eye)),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: GestureDetector(
                        onTap: () async {
                          await pr.show();
                          FormData formData = new FormData.fromMap({
                            "email": name,
                            "password": pass,
                            // "mobile_number": phn
                          });
                          Dio dio = Dio();
                          Response response = await dio.post(
                            "https://pantryrecipe.herokuapp.com/api/v1/users/signup.json",
                            data: formData,
                          );
                          print(response.data);
                          var jsonResponse = json.decode(response.toString());
                          var status = jsonResponse['success'];
                          print(status);

                          if (status == true) {
                            await pr.hide();
                            print('gg');
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Home()),
                            );
                          } else {
                            print('gfg');
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignUp()),
                            );
                          }
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFFE718B),
                          ),
                          child: Center(
                              child: TextResponsive(
                            'Sign Up',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 150.h),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  children: <Widget>[
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
                  ],
                ),
                // SizedBox(
                //   height: 50,
                // ),
                Stack(
                  children: <Widget>[
                    Align(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 50,
                          ),
                          TextResponsive(
                            'Already have an acount ?',
                            style: TextStyle(
                              fontFamily: 'SofiaPro-Medium',
                              fontSize: 40,
                              color: const Color(0xff130f10),
                            ),
                            textAlign: TextAlign.left,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, 'signin');
                            },
                            child: TextResponsive(
                              'Sign in',
                              style: TextStyle(
                                fontFamily: 'SofiaPro-Medium',
                                fontSize: 45,
                                color: const Color(0xffff718b),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      child: Image.asset(
                        'Assets/signUp/Place Your Image Here-3.png',
                        height: 361.h,
                        width: 147.w,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Image.asset(
                        'Assets/signUp/Place Your Image Here-3.png',
                        height: 361.h,
                        width: 147.w,
                      ),
                    ),
                  ],
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
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextResponsive(
                text,
                style: TextStyle(
                  fontFamily: 'SofiaPro-Medium',
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    path,
                    height: 30.h,
                    width: 30.h,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: const Color(0xfff5f6f9),
                ),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
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
