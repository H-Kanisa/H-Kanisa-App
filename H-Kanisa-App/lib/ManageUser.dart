// ignore_for_file: missing_required_param

import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:responsive_dashboard/component/FabPopover.dart';
import 'package:responsive_dashboard/component/ListBuilder.dart';
import 'package:responsive_dashboard/page/Common_Items/DataSheet%20Master/BottomModalSheet.dart';
import 'package:responsive_dashboard/page/home-screen.dart';

import 'package:responsive_dashboard/pallete.dart';

import 'package:dropdown_button2/dropdown_button2.dart';

import '../../../component/CustomAppBar.dart';
import '../../../dashboard.dart';

Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Common_Items',
      color: AppColor.whiteHK,
      theme: ThemeData(
          primarySwatch: AppColor.colorHK,
         ),
      home: manageUsers(),
    );

///
///
///
final List<String> genderItems = [
  'Male',
  'Female',
];

///
///
///
///
final List<String> userLevel = [
  'Minister',
  'Shepherd',
  'Zonal Minister',
  'Pastor',
  'Ass.HOD',
  'HOD',
  'Member',
  'College Minister'
];

///
///
///
final List<String> branch = [
  'HQ-Ongata Rongai',
  'Kitengela',
  'Naivasha',
  'Kware'
];

///
///
///
final List<String> church = ['TGL', 'ARK', 'HFC'];

///
///
///
final List<String> zone = ['KWARE TO OLEKASASI', 'KISERIAN', 'GATAKA'];

///
///
///
final List<String> cell = [
  'Isaiah 60:22',
  'Eliazar',
];

///
///
///
final List<String> departments = ['Creative Arts', 'Media', 'Praise & Worship'];

///
///
String selectedValue;

@override

///
///
///
class manageUsers extends StatelessWidget {
  get context => null;
  int currentStep = 0;
  final firstName = TextEditingController();
  final secondName = TextEditingController();
  final lastName = TextEditingController();
  final birthday = TextEditingController();
  final gender = TextEditingController();
  final phoneNumber = TextEditingController();
  final location = TextEditingController();

  final branch = TextEditingController();

  ///
  ///
  ///
  ///
  ///
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: AppColor.whiteHK,

          /*  appBar: CustomAppBar(
          title: "Registor Member",
          onClickedHome: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: ((context) => Dashboard())));
          },
          onClickedBack: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: ((context) => DataSheet())));
          }),*/
          body: Theme(
              data: ThemeData(
                fontFamily: "Poppins",
                canvasColor: Colors.white,
                colorScheme: Theme.of(context).colorScheme.copyWith(
                      primary: AppColor.greenHK,
                      background: AppColor.greyHK,
                      secondary: AppColor.greenHK,
                    ),
              ),
              child: Container(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0).add(
                        EdgeInsets.only(top: 8)
                            .add(EdgeInsets.symmetric(horizontal: 15))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 20)),
                            IconButton(
                                color: AppColor.midGreyHk,
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Dashboard()));
                                },
                                padding: EdgeInsets.zero.add(
                                    EdgeInsets.symmetric(vertical: 15)
                                        .add(EdgeInsets.only(right: 5))),
                                constraints: BoxConstraints(),
                                icon: Icon(Icons.arrow_back_ios_new_sharp)),
                            Text("Manage Users",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    color: AppColor.midGreyHk,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),

                        ///
                        Padding(padding: EdgeInsets.only(top: 10)),

                        ///
                        ///

                        TextFormField(
                          controller: firstName,
                          maxLines: 7,
                          cursorColor: AppColor.greenHK,
                          minLines: 1,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                          decoration: InputDecoration(
                            labelText: 'User Name',
                            focusColor: AppColor.greenHK,
                            prefixIcon:
                                Icon(Icons.person, color: AppColor.midGreyHk),
                            isDense: true,
                            ////
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide: BorderSide(
                                color: AppColor.offWhiteHK,
                                width: 2.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: AppColor.greenHK,
                                width: 2.5,
                              ),
                            ),
                          ),
                        ),

                        ///
                        Padding(padding: EdgeInsets.symmetric(vertical: 8)),

                        ///
                        ///
                        ///
                        ///
                        DropdownButtonFormField2(
                          decoration: InputDecoration(
                            //Add isDense true and zero Padding.
                            //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                            isDense: true,

                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide: BorderSide(
                                color: AppColor.offWhiteHK,
                                width: 2.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: AppColor.greenHK,
                                width: 2.5,
                              ),
                            ),

                            contentPadding: EdgeInsets.zero,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide: BorderSide(
                                color: AppColor.greenHK,
                                width: 2.5,
                              ),
                            ),

                            //Add more decoration as you want here
                            //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                          ),
                          isExpanded: true,
                          hint: const Text(
                            'Select User Level',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Poppins",
                            ),
                          ),
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black45,
                          ),
                          iconSize: 30,
                          buttonHeight: 48,
                          buttonPadding:
                              const EdgeInsets.only(left: 20, right: 10),
                          dropdownDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          items: userLevel
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: AppColor.greyHK,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ))
                              .toList(),
                          validator: (value) {
                            if (value == null) {
                              return 'Please select User Level.';
                            }
                          },
                          onChanged: (value) {
                            //Do something when changing the item if you want.
                          },
                          onSaved: (value) {
                            selectedValue = value.toString();
                          },
                        ),

                        ///
                        ///
                        ///

                        Padding(padding: EdgeInsets.symmetric(vertical: 8)),

                        ///
                        ///
                        ///
                        DropdownButtonFormField2(
                          decoration: InputDecoration(
                            //Add isDense true and zero Padding.
                            //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                            isDense: true,

                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide: BorderSide(
                                color: AppColor.offWhiteHK,
                                width: 2.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: AppColor.greenHK,
                                width: 2.5,
                              ),
                            ),

                            contentPadding: EdgeInsets.zero,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide: BorderSide(
                                color: AppColor.greenHK,
                                width: 2.5,
                              ),
                            ),

                            //Add more decoration as you want here
                            //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                          ),
                          isExpanded: true,
                          hint: const Text(
                            'Select Gender',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Poppins",
                            ),
                          ),
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black45,
                          ),
                          iconSize: 30,
                          buttonHeight: 48,
                          buttonPadding:
                              const EdgeInsets.only(left: 20, right: 10),
                          dropdownDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          items: genderItems
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: AppColor.greyHK,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ))
                              .toList(),
                          validator: (value) {
                            if (value == null) {
                              return 'Please select User Level.';
                            }
                          },
                          onChanged: (value) {
                            //Do something when changing the item if you want.
                          },
                          onSaved: (value) {
                            selectedValue = value.toString();
                          },
                        ),

                        ///
                        ///
                        ///
                        Padding(padding: EdgeInsets.symmetric(vertical: 8)),

                        ///
                        ///
                        ///
                        DropdownButtonFormField2(
                          decoration: InputDecoration(
                            //Add isDense true and zero Padding.
                            //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                            isDense: true,

                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide: BorderSide(
                                color: AppColor.offWhiteHK,
                                width: 2.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: AppColor.greenHK,
                                width: 2.5,
                              ),
                            ),

                            contentPadding: EdgeInsets.zero,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide: BorderSide(
                                color: AppColor.greenHK,
                                width: 2.5,
                              ),
                            ),

                            //Add more decoration as you want here
                            //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                          ),
                          isExpanded: true,
                          hint: const Text(
                            'Select Your Department',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Poppins",
                            ),
                          ),
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black45,
                          ),
                          iconSize: 30,
                          buttonHeight: 48,
                          buttonPadding:
                              const EdgeInsets.only(left: 20, right: 10),
                          dropdownDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          items: departments
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: AppColor.greyHK,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ))
                              .toList(),
                          validator: (value) {
                            if (value == null) {
                              return 'Please select your department.';
                            }
                          },
                          onChanged: (value) {
                            //Do something when changing the item if you want.
                          },
                          onSaved: (value) {
                            selectedValue = value.toString();
                          },
                        ),

                        ///
                        ///
                        ///
                        Padding(padding: EdgeInsets.symmetric(vertical: 8)),

                        ///
                        ///
                        ///
                        ///Cell groups
                        DropdownButtonFormField2(
                          decoration: InputDecoration(
                            //Add isDense true and zero Padding.
                            //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                            isDense: true,

                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide: BorderSide(
                                color: AppColor.offWhiteHK,
                                width: 2.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: AppColor.greenHK,
                                width: 2.5,
                              ),
                            ),

                            contentPadding: EdgeInsets.zero,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide: BorderSide(
                                color: AppColor.greenHK,
                                width: 2.5,
                              ),
                            ),

                            //Add more decoration as you want here
                            //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                          ),
                          isExpanded: true,
                          hint: const Text(
                            'Select Your Cell',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Poppins",
                            ),
                          ),
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black45,
                          ),
                          iconSize: 30,
                          buttonHeight: 48,
                          buttonPadding:
                              const EdgeInsets.only(left: 20, right: 10),
                          dropdownDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          items: cell
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: AppColor.greyHK,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ))
                              .toList(),
                          validator: (value) {
                            if (value == null) {
                              return 'Please select your Cell.';
                            }
                          },
                          onChanged: (value) {
                            //Do something when changing the item if you want.
                          },
                          onSaved: (value) {
                            selectedValue = value.toString();
                          },
                        ),

                        ///
                        ///
                        ///
                        ///
                        ///
                        Padding(padding: EdgeInsets.symmetric(vertical: 8)),

                        ///
                        ///
                        ///
                        ///
                        ///Zones
                        DropdownButtonFormField2(
                          decoration: InputDecoration(
                            //Add isDense true and zero Padding.
                            //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                            isDense: true,

                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide: BorderSide(
                                color: AppColor.offWhiteHK,
                                width: 2.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: AppColor.greenHK,
                                width: 2.5,
                              ),
                            ),

                            contentPadding: EdgeInsets.zero,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide: BorderSide(
                                color: AppColor.greenHK,
                                width: 2.5,
                              ),
                            ),

                            //Add more decoration as you want here
                            //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                          ),
                          isExpanded: true,
                          hint: const Text(
                            'Select Zone',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Poppins",
                            ),
                          ),
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black45,
                          ),
                          iconSize: 30,
                          buttonHeight: 48,
                          buttonPadding:
                              const EdgeInsets.only(left: 20, right: 10),
                          dropdownDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          items: zone
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: AppColor.greyHK,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ))
                              .toList(),
                          validator: (value) {
                            if (value == null) {
                              return 'Please select your Zone.';
                            }
                          },
                          onChanged: (value) {
                            //Do something when changing the item if you want.
                          },
                          onSaved: (value) {
                            selectedValue = value.toString();
                          },
                        ),

                        ///
                        ///
                        ///
                        ///
                        ///
                        Padding(padding: EdgeInsets.symmetric(vertical: 8)),

                        ///
                        ///
                        ///
                        ///Church
                        ///
                        ///
                        ///
                        DropdownButtonFormField2(
                          decoration: InputDecoration(
                            //Add isDense true and zero Padding.
                            //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                            isDense: true,

                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide: BorderSide(
                                color: AppColor.offWhiteHK,
                                width: 2.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: AppColor.greenHK,
                                width: 2.5,
                              ),
                            ),

                            contentPadding: EdgeInsets.zero,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide: BorderSide(
                                color: AppColor.greenHK,
                                width: 2.5,
                              ),
                            ),

                            //Add more decoration as you want here
                            //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                          ),
                          isExpanded: true,
                          hint: const Text(
                            'Select Church',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Poppins",
                            ),
                          ),
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black45,
                          ),
                          iconSize: 30,
                          buttonHeight: 48,
                          buttonPadding:
                              const EdgeInsets.only(left: 20, right: 10),
                          dropdownDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          items: church
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: AppColor.greyHK,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ))
                              .toList(),
                          validator: (value) {
                            if (value == null) {
                              return 'Please select your Church.';
                            }
                          },
                          onChanged: (value) {
                            //Do something when changing the item if you want.
                          },
                          onSaved: (value) {
                            selectedValue = value.toString();
                          },
                        ),

                        ///
                        ///
                        ///

                        Padding(padding: EdgeInsets.symmetric(vertical: 8)),

                        ///
                        ///
                        ///
//////Branch
                        DropdownButtonFormField2(
                          decoration: InputDecoration(
                            //Add isDense true and zero Padding.
                            //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                            isDense: true,

                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide: BorderSide(
                                color: AppColor.offWhiteHK,
                                width: 2.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: AppColor.greenHK,
                                width: 2.5,
                              ),
                            ),

                            contentPadding: EdgeInsets.zero,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide: BorderSide(
                                color: AppColor.greenHK,
                                width: 2.5,
                              ),
                            ),

                            //Add more decoration as you want here
                            //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                          ),
                          isExpanded: true,
                          hint: const Text(
                            'Select Branch',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Poppins",
                            ),
                          ),
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black45,
                          ),
                          iconSize: 30,
                          buttonHeight: 48,
                          buttonPadding:
                              const EdgeInsets.only(left: 20, right: 10),
                          dropdownDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          items: cell
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: AppColor.greyHK,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ))
                              .toList(),
                          validator: (value) {
                            if (value == null) {
                              return 'Please select your Branch.';
                            }
                          },
                          onChanged: (value) {
                            //Do something when changing the item if you want.
                          },
                          onSaved: (value) {
                            selectedValue = value.toString();
                          },
                        ),

                        ///
                        ///
                        ///

                        ///
                      ],
                    ),
                  ),
                ),
              )),
        ));

    ///
    ///

    ///
    ///
  }
}
