import 'package:flutter/material.dart';
import 'package:responsive_dashboard/ManageUser.dart';
import 'package:responsive_dashboard/component/navigatormenu.dart';
import 'package:responsive_dashboard/component/splash_screen.dart';
import 'package:responsive_dashboard/dashboard.dart';
import 'package:responsive_dashboard/page/Common_Items/DataSheet%20Master/Drop%20Child.dart';
import 'package:responsive_dashboard/page/Common_Items/DataSheet%20Master/Pick%20Child.dart';
import 'package:responsive_dashboard/page/Common_Items/DataSheet%20Master/Register%20Member.dart';
import 'package:responsive_dashboard/page/Common_Items/DataSheet_master.dart';

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
          scaffoldBackgroundColor: Color.fromARGB(255, 245, 245, 248)),
      home:PickChild(),
    );
  }
}
