import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/component/ExpandableCard.dart';
import 'package:responsive_dashboard/page/Common_Items/DataSheet%20Master/Register%20Member.dart';
import 'package:responsive_dashboard/style/pallete.dart';

Widget build(BuildContext context) => MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Common_Items',
  color: AppColor.whiteHK,
  theme: ThemeData(
      primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.white),
  home: viewMembers(),
);

class viewMembers extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColor.scaffoldColor,

        body: ListView(children: <Widget>[
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          ExpandableCard(
            title: "Register Member",
            onClick: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => regMember(),
            ),),
          ),
          ExpandableCard(
            title: "Register Member",
            onClick: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => regMember(),
            )),
          ),
          ExpandableCard(
            title: "Register Member",
            onClick: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => regMember(),
            )),
          ),
          ExpandableCard(
            title: "Register Member",
            onClick: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => regMember(),
            )),
          ),ExpandableCard(
            title: "Register Member",
            onClick: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => regMember(),
            )),
          ),

        ]),
      ),
    );
  }
}
