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
            title: "Department Attendance",
            onClickedHome: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Dashboard()));
            },
            onClickedBack: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Common_Items()));
            }),
      ),
    );
  }
}
