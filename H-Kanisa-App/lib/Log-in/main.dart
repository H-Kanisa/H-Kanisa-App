import 'package:flutter/material.dart';
import 'package:responsive_dashboard/component/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'DM_Sans'),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
