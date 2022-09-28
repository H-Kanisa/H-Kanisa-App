import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/dashboard.dart';
import 'package:responsive_dashboard/main.dart';
import 'package:responsive_dashboard/page/Common_Items/DataSheet_master.dart';
import 'package:responsive_dashboard/page/Common_Items_Page.dart';
import 'package:responsive_dashboard/style/pallete.dart';

import '../../../component/CustomAppBar.dart';
import '../../../component/ListBuilder.dart';
import '../../../component/navigatormenu.dart';

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
                  .push(MaterialPageRoute(builder: (context) => Dashboard()));
            },
            onClickedBack: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => IconMenu()));
            }),
        body: ListView(children: <Widget>[
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          BuildList(
            icon: Icons.people_alt,
            title: "Register Visitor",
            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DataSheet(),
            )),
          ),
          BuildList(
            icon: Icons.people_alt,
            title: "Register Member",
            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DataSheet(),
            )),
          ),
          BuildList(
            icon: Icons.people_alt,
            title: "View Members",
            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DataSheet(),
            )),
          ),
          BuildList(
            icon: Icons.people_alt,
            title: "Register Child",
            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DataSheet(),
            )),
          ),
          BuildList(
            icon: Icons.people_alt,
            title: "Drop Child",
            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DataSheet(),
            )),
          ),
          BuildList(
            icon: Icons.people_alt,
            title: "Pick Child",
            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DataSheet(),
            )),
          ),
          BuildList(
            icon: Icons.people_alt,
            title: "Visitation",
            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DataSheet(),
            )),
          ),
        ]),
      ),
    );
  }
}
