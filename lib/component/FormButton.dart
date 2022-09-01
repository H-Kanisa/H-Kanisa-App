import 'dart:js';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/style/colors.dart';

import '../ManageUser.dart';
import '../pallete.dart';

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
  return Padding(
    padding: const EdgeInsets.all(8.0).add(EdgeInsets.only(bottom: 20)),
    child: Container(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed))
                  return AppColors.greenHK;
                return null; // Use the component's default.
              },
            ),
          ),

      child: Text(text,style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14,
          color: AppColor.whiteHK,
          fontWeight: FontWeight.w300),),
      onPressed: action,
    )),
  );
}
