import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/page/Common_Items/Attendance%20Report/Cell%20Attendance%20Report.dart';
import 'package:responsive_dashboard/page/Common_Items/Attendance%20Report/College%20Attendance%20Report.dart';
import 'package:responsive_dashboard/page/Common_Items/Attendance/Cell%20Attendance.dart';
import 'package:responsive_dashboard/page/Common_Items/Visitation%20Report.dart';
import 'package:responsive_dashboard/page/dashboard.dart';
import 'package:responsive_dashboard/main.dart';
import 'package:responsive_dashboard/page/Common_Items/DataSheet_master.dart';
import 'package:responsive_dashboard/page/Common_Items_Page.dart';
import 'package:responsive_dashboard/style/pallete.dart';

import '../../component/appbars/CustomAppBar.dart';
import '../../component/listview/ListBuilder.dart';
import '../../component/navigatormenu.dart';

Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Attendance Report',
      color: AppColor.whiteHK,
      theme: ThemeData(
          primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.white),
      home: attendanceReport(),
    );

class attendanceReport extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CustomAppBar(
            title: "Attendance Report",
            onClickedHome: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Common_Items()));
            },
            onClickedBack: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => IconMenu()));
            }),
        body: ListView(children: <Widget>[
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          BuildList(
            icon: Icons.people_alt,
            title: "Cell Attendance",
            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => cellAttendanceReport(),
            )),
          ),
          BuildList(
            icon: Icons.people_alt,
            title: "College Attendance",
            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => collegeAttendanceReport(),
            )),
          ),
          BuildList(
            icon: Icons.people_alt,
            title: "Department Attendance",
            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DataSheet(),
            )),
          ),
          BuildList(
            icon: Icons.people_alt,
            title: "Zone Attendance",
            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DataSheet(),
            )),
          ),
        ]),
      ),
    );
  }
}
