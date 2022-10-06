import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Log-in/login_screen.dart';
import 'package:responsive_dashboard/page/dashboard.dart';

import 'package:responsive_dashboard/style/pallete.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "WELCOME TO",
            style: TextStyle(
                fontFamily: "Poppins",
                color: AppColor.greenHK,
                fontWeight: FontWeight.w800,
                fontSize: 30),
          ),
          Image.asset("assets/main-horizontal.png", scale: 7),
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ));
              // Write Click Listener Code Here.
            },
            child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: EdgeInsets.only(left: 15, right: 15),
                height: 38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColor.greenHK,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE)),
                  ],
                ),
                //button text
                child: Text(
                  "LOG IN",
                  style: TextStyle(
                      color: AppColor.whiteHK,
                      fontFamily: 'Poppins',
                      fontSize: 21,
                      fontWeight: FontWeight.w800),
                )),
          ),
          /*
          RoundedButton(
            text: "LOG IN",
            btnColor: AppColor.greenHK,
            color: AppColor.whiteHK,
            shadowColor: AppColor.midGreyHk,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
          ),*/
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Dashboard(),
                  ));
              // Write Click Listener Code Here.
            },
            child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: EdgeInsets.only(left: 15, right: 15),
                height: 38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColor.whiteHK,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: AppColor.offWhiteHK),
                  ],
                ),
                //button text
                child: Text(
                  "SKIP FOR NOW",
                  style: TextStyle(
                      color: AppColor.greenHK,
                      fontFamily: 'Poppins',
                      fontSize: 21,
                      fontWeight: FontWeight.w800),
                )),
          ),
        ],
      ),
    );
  }
}
