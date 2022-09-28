import 'package:flutter/material.dart';
import 'package:responsive_dashboard/component/navigatormenu.dart';
import 'package:responsive_dashboard/page/Dashboard/People.dart';

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

          scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255)),
      home: People(),
    );
  }
}
