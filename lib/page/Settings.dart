import 'package:flutter/material.dart';


Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Common Items',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Settings(),
  );
}

class Settings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<Settings> {
  Widget build(BuildContext context) {
    return Scaffold(
        );
  }
}
