
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/component/CustomButton.dart';
import 'package:responsive_dashboard/component/FormBirthday.dart';
import 'package:responsive_dashboard/component/FormText.dart';
import 'package:responsive_dashboard/component/List.dart';
import 'package:responsive_dashboard/dashboard.dart';

import '../../../../../component/FormOptions.dart';
import '../../../../../component/TitleAppBar.dart';

//import '../pallete.dart';

class manageUsers extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        primary: false,
        backgroundColor: Colors.white,
        toolbarHeight: 120,
        elevation: 0,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Container(
                alignment: Alignment.bottomLeft,
                child: FormTitle(
                    title: "Manage Users",
                    onClicked: () {
    Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => Dashboard(),
    ));
                    })),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),

          child: Column(
            children: [

              Wrap(
                spacing: 20,
                runSpacing: 20,
                alignment: WrapAlignment.spaceBetween,
                children: [

                SingleChildScrollView(
                  child: Column(
                    children: [
                      FormText(
                        text: "First Name",
                      ),
                      FormText(text: "Second Name"),
                      FormText(text: "Middle Name"),
                      FormText(text: "Last Name"),
                      FormText(text: "Phone Number"),
                      FormDropDown(text: "Cell",list: cell),
                      FormDropDown(text: "Zone", list: zone),
                      FormDropDown(text: "Church", list: church),
                      FormDropDown(text: "Branch", list: branch),
                      FormButton(text:"Submit",action: (){
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Dashboard(),
                        ));
                      } )
                    ],
                  ),
                ),]
              )
            ],
          ),
        )
    );
  }
}
