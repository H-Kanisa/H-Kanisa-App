import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      title: 'Attendance',
      color: AppColor.whiteHK,
      theme: ThemeData(
          primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.white),
      home: attendance(),
    );

class attendance extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CustomAppBar(
            title: "Setup",
            onClickedHome: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Dashboard()));
            },
            onClickedBack: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Common_Items()));
            }),
        body: ListView(children: <Widget>[
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          BuildList(
            icon: Icons.people_sharp,
            title: "Department Attendance",
            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DataSheet(),
            )),
          ),
          BuildList(
            icon: Icons.people_sharp,
            title: "Cell Attendance",
            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DataSheet(),
            )),
          ),
          BuildList(
            icon: Icons.people_sharp,
            title: "HOD Attendance",
            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DataSheet(),
            )),
          ),
        ]),
      ),
    );
  }
}
