import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD:lib/page/Common_Items/DataSheet Master/View MemberDetails.dart
import 'package:responsive_dashboard/component/cards/ExpandableCard.dart';
import 'package:responsive_dashboard/page/Common_Items/DataSheet%20Master/Register%20Member.dart';
import 'package:responsive_dashboard/style/pallete.dart';

Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Common_Items',
      color: AppColor.whiteHK,
      theme: ThemeData(
          primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.white),
      home: viewMembersDetails(),
    );
=======
import 'package:responsive_dashboard/component/ExpandableCard.dart';
import 'package:responsive_dashboard/page/Common_Items/DataSheet%20Master/Register%20Member.dart';
import 'package:responsive_dashboard/pallete.dart';

Widget build(BuildContext context) => MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Common_Items',
  color: AppColor.whiteHK,
  theme: ThemeData(
      primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.white),
  home: viewMembersDetails(),
);
>>>>>>> main:H-Kanisa-App/lib/page/Common_Items/DataSheet Master/View MemberDetails.dart

class viewMembersDetails extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColor.scaffoldColor,
<<<<<<< HEAD:lib/page/Common_Items/DataSheet Master/View MemberDetails.dart
=======

>>>>>>> main:H-Kanisa-App/lib/page/Common_Items/DataSheet Master/View MemberDetails.dart
        body: ListView(children: <Widget>[
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          ExpandableCard(
            title: "Register Member",
<<<<<<< HEAD:lib/page/Common_Items/DataSheet Master/View MemberDetails.dart
            onClick: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => regMember(),
              ),
            ),
=======
            onClick: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => regMember(),
            ),),
>>>>>>> main:H-Kanisa-App/lib/page/Common_Items/DataSheet Master/View MemberDetails.dart
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
<<<<<<< HEAD:lib/page/Common_Items/DataSheet Master/View MemberDetails.dart
          ),
          ExpandableCard(
=======
          ),ExpandableCard(
>>>>>>> main:H-Kanisa-App/lib/page/Common_Items/DataSheet Master/View MemberDetails.dart
            title: "Register Member",
            onClick: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => regMember(),
            )),
          ),
<<<<<<< HEAD:lib/page/Common_Items/DataSheet Master/View MemberDetails.dart
=======

>>>>>>> main:H-Kanisa-App/lib/page/Common_Items/DataSheet Master/View MemberDetails.dart
        ]),
      ),
    );
  }
}
