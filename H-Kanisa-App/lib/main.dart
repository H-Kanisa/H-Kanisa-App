import 'package:flutter/material.dart';
import 'package:responsive_dashboard/component/navigatormenu.dart';
import 'package:responsive_dashboard/dashboard.dart';
import 'package:responsive_dashboard/page/ScreenWrapper.dart';
import 'package:responsive_dashboard/page/OnBoardingScreen.dart';
import 'package:responsive_dashboard/page/Setup/Add%20Zone.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    IconMenu();
    image:
    Image.asset("assets/H-Main.png");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'H-Kanisa',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255)),
      home: Dashboard(),
    );
  }
}
