import 'package:flutter/material.dart';
import 'package:responsive_dashboard/page/Common_Items/DataSheet%20Master/Register%20Member.dart';
import 'package:responsive_dashboard/page/Common_Items/DataSheet%20Master/View%20Members.dart';
import 'package:responsive_dashboard/page/Common_Items_Page.dart';
import 'package:responsive_dashboard/page/M-Pesa/ConfirmPayment.dart';
import 'package:responsive_dashboard/page/M-Pesa/Tithe.dart';
import 'package:responsive_dashboard/page/ScreenWrapper.dart';
import 'package:responsive_dashboard/page/dashboard.dart';
import 'package:responsive_dashboard/page/Dashboard/ManageUser.dart';
import 'package:responsive_dashboard/page/Dashboard/People.dart';

import 'package:responsive_dashboard/test/widget_test.dart';

import 'page/Login/LogInPage.dart';
import 'page/Login/SignUpPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Image.asset("assets/H-Main.png");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'H-Kanisa',
      theme: ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255)),
      home: Dashboard(),
    );
  }
}
