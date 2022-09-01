import 'package:flutter/material.dart';

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
  IconData icon,
  VoidCallback action,
}) {
  return Container(
    child: Center(
      child: ElevatedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text,style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: AppColor.whiteHK,
                fontWeight: FontWeight.w300),),
            Icon(icon)
          ],
        ),
        onPressed: action,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(15),
          textStyle: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
              color: AppColor.whiteHK,
              fontWeight: FontWeight.w300),

        ),
      ),
    ),
  );}