import 'package:flutter/material.dart';
import 'package:responsive_dashboard/page/home-screen.dart';

import '../pallete.dart';

abstract class formTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Common Items',
      theme: new ThemeData(primaryColor: AppColor.whiteHK),
    );
  }
}

Widget FormTitle({
  String title,
  IconData icon,
  VoidCallback onClicked,
}) {
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Column(
      verticalDirection: VerticalDirection.down,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Transform.scale(
          scale: 1.0,
          child: IconButton(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              icon: Icon(Icons.arrow_back, color: AppColor.greyHK, size: 32),
              onPressed: onClicked),
        ),
        
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15).add(EdgeInsets.only(top: 20)),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30,
                color: AppColor.greyHK,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600),
          ),
        )
      ],
    ),
  );
}

Widget PageTitle({
  String title,
  IconData icon,
  VoidCallback onClicked,
}) {
  return AppBar(
      title: Text(
    title,
    textAlign: TextAlign.center,
    style: TextStyle(
        fontSize: 30,
        color: AppColor.greyHK,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w600),
  ));
}
