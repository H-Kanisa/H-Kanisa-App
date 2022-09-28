import 'dart:js';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/style/pallete.dart';

import '../page/Dashboard/ManageUser.dart';
import '../style/pallete.dart';

abstract class formButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primaryColor: AppColor.whiteHK),
    );
  }
}

Widget FormButton({
  String text,
  String hint,
  IconData prefix,
  List list,
  VoidCallback action,
}) {
  return Container(
    child: Center(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
           OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.black,
              primary: Colors.amberAccent, //<-- SEE HERE
            ),
            onPressed: () {},
            child: Text(text,style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: AppColor.whiteHK,
                fontWeight: FontWeight.w700),),
          ),
      ]),
    )
  );
}
