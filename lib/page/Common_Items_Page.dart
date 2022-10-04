import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:responsive_dashboard/component/CustomAppBar.dart';
import 'package:responsive_dashboard/component/navigatormenu.dart';
import 'package:responsive_dashboard/page/OnBoardingScreen.dart';
import 'package:responsive_dashboard/pallete.dart';
import 'package:responsive_dashboard/dashboard.dart';

import '../component/ListBuilder.dart';
import 'Common_Items/Attendance Report.dart';
import 'Common_Items/Attendance.dart';
import 'Common_Items/DataSheet_master.dart';
import 'Common_Items/Visitation Report.dart';

Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Common Items',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Common_Items(),
  );
}

class Common_Items extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<Common_Items> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
            title: "Common Items",
            onClickedHome: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: ((context) => Dashboard())));
            },
            onClickedBack: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: ((context) => IconMenu())));
            }),
        body: ListView(children: <Widget>[
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          BuildList(
            icon: Icons.data_saver_off_sharp,
            title: "Data Sheet Master",
            desc: "Brief Description",
            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DataSheet(),
            )),
          ),
          BuildList(
            icon: Icons.people_alt_rounded,
            title: "Attendance",
            desc: "Brief Description",
            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => attendanceReport(),
            )),
          ),
          BuildList(
            icon: Icons.person_pin_circle,
            title: "Attendance Report",
            desc: "Brief Description",
            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => attendanceReport(),
            )),
          ),
          BuildList(
            icon: Icons.person_pin_circle,
            title: "Visitation Report",
            desc: "Brief Description",
            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => visitationReport(),
            )),
          ),
        ]));
  }
}
