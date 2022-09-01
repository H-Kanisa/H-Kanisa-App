import 'package:flutter/material.dart';
import 'package:responsive_dashboard/component/CustomButton.dart';
import 'package:responsive_dashboard/component/FormBirthday.dart';
import 'package:responsive_dashboard/component/FormText.dart';
import 'package:responsive_dashboard/component/List.dart';

import '../../../component/FormOptions.dart';
import '../../../component/TitleAppBar.dart';
import '../Setup_Page.dart';

//import '../pallete.dart';

class addZone extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          child: Column(
            children: [
              Container(
                  alignment: Alignment.bottomLeft,
                  child: FormTitle(
                      title: "Add Zone",
                      onClicked: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Setup(),
                        ));
                      })),
              SingleChildScrollView(
                child: Column(
                  children: [
                    FormText(text: "Zone"),
                    FormDropDown(text: "Church", list: church),
                    FormDropDown(text: "Branch", list: branch),
                    FormButton(text: "Submit")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
