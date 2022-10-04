import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Welcome/constants.dart';
import 'package:responsive_dashboard/pallete.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Color btnColor;
  final Color shadowColor;
  final Function() press;
  final Color color, textColor;
  final double height;
  const RoundedButton({
    this.text,
    this.press,
    this.btnColor,
    this.shadowColor,
    this.color,
    this.textColor = Colors.white,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      height: height ?? size.height * 0.055,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: newElevatedButton(),
      ),
    );
  }

  //Used:ElevatedButton as FlatButton is deprecated.
  //Here we have to apply customizations to Button by inheriting the styleFrom

  Widget newElevatedButton() {
    return ElevatedButton(
      onPressed: press,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(btnColor),
          shadowColor: MaterialStateProperty.all<Color>(Color(0xFF808080))),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: "Poppins",
          color: color,
          fontSize: 18,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
