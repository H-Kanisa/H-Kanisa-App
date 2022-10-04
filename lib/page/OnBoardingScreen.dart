import 'package:flutter/material.dart';
import 'package:responsive_dashboard/pallete.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColor.whiteHK,
            ),
          ),
          Center(
            child: Container(
              child: Image.asset("assets/main-horizontal.png"),
              height: 300,
              width: 300,
            ),
          )
        ],
      ),
    );
  }
}
/*class onBoarding extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: AppColor.greenHK,
          body: Container(
            child: Center(
              child: Container(
                  decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 10,
                      color: Color(0xffEEEEEE))
                ],
                color: AppColor.whiteHK,
              )),
            ),
          )),
    );
  }
}

Widget build(BuildContext context) => MaterialApp(
    title: 'Common_Items',
    color: AppColor.whiteHK,
    theme: ThemeData(
        primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.white),
    home: onBoarding());
*/