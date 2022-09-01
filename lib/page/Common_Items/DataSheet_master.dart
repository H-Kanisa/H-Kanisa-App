import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/dashboard.dart';
import 'package:responsive_dashboard/main.dart';
import 'package:responsive_dashboard/page/Common_Items/DataSheet%20Master/Pick%20Child.dart';
import 'package:responsive_dashboard/page/Common_Items/DataSheet%20Master/Register%20Child.dart';
import 'package:responsive_dashboard/page/Common_Items/DataSheet%20Master/Register%20Member.dart';
import 'package:responsive_dashboard/page/Common_Items/DataSheet%20Master/Register%20Visitor.dart';
import 'package:responsive_dashboard/page/Common_Items/DataSheet_master.dart';
import 'package:responsive_dashboard/page/Common_Items_Page.dart';
import 'package:responsive_dashboard/pallete.dart';

import '../../component/CustomAppBar.dart';
import '../../component/ListBuilder.dart';

Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Common_Items',
      color: AppColor.whiteHK,
      theme: ThemeData(
          primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.white),
      home: DataSheet(),
    );

class DataSheet extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColor.scaffoldColor,
        appBar: CustomAppBar(
            title: "Data Sheet Master",
            onClickedHome: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: ((context) => Dashboard())));
            },
            onClickedBack: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: ((context) => Common_Items())));
            }),
        body: ListView(children: <Widget>[
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          BuildList(
            icon: Icons.person_add_alt,
            title: "Register Member",
            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => regMember(),
            )),
          ),
          BuildList(
            icon: Icons.phone,
            title: "Register Visitor",
            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => regVisitor(),
            )),
          ),
          BuildList(
            icon: Icons.child_care_rounded,
            title: "Register Child",
            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => regChild(),
            )),
          ),
          BuildList(
            icon: Icons.child_care_sharp,
            title: "Drop Child",
            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DataSheet(),
            )),
          ),
          BuildList(
            icon: Icons.child_care,
            title: "Pick Child",
            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => PickChild(),
            )),
          ),
          BuildList(
            icon: Icons.person_pin_circle_rounded,
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
