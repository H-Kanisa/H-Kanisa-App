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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50.0),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(465,50),
                    backgroundColor: AppColor.greenHK,
                    primary: Colors.white, //<-- SEE HERE
                  ),
                  onPressed: () {

                  },
                  child: Text(text,style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 17,
                      color: AppColor.whiteHK,
                      fontWeight: FontWeight.w700),),
                ),
              ),
            ]),
      )
  );
}
