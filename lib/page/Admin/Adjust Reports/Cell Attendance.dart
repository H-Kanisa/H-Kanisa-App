import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/main.dart';
import 'package:responsive_dashboard/page/Admin.dart';
import 'package:responsive_dashboard/page/Common_Items/DataSheet_master.dart';
import 'package:responsive_dashboard/page/Setup_Page.dart';
import 'package:responsive_dashboard/style/pallete.dart';

import '../../../component/CustomAppBar.dart';
import '../../../component/ListBuilder.dart';
import '../../../component/navigatormenu.dart';
import '../../../dashboard.dart';

Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'adjustReports',
      color: AppColor.whiteHK,
      theme: ThemeData(primarySwatch: AppColor.colorHK),
      home: CellAttendance(),
    );

class CellAttendance extends StatefulWidget {
  @override
  State<CellAttendance> createState() => _CellAttendance();
}

class _CellAttendance extends State<CellAttendance> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: "Cell Attendance",
          onClickedHome: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Dashboard()));
          },
          onClickedBack: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Admin()));
          }),
    );
  }
}
