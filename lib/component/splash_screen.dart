import 'dart:async';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/page/welcome_screen.dart';
import '../Log-in/pallete.dart';
import '../Log-in/login_screen.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 2);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
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
              color: AppColor.greenHK,
            ),
          ),
          Center(
            child: Container(
              child: Image.asset("assets/white_horizontal.png"),
              height: 300,
              width: 300,
            ),
          )
        ],
      ),
    );
  }
}
