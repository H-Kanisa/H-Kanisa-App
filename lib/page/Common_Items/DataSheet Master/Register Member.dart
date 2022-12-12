import 'dart:convert';
import 'dart:convert' as convert;
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/component/form/CustomButton.dart';
import 'package:responsive_dashboard/component/Form/FormBirthday.dart';
import 'package:responsive_dashboard/component/Form/FormText.dart';
import 'package:responsive_dashboard/component/constants/List.dart';
import 'package:responsive_dashboard/page/Common_Items/DataSheet%20Master/View%20Members.dart';
import 'dart:io';
import '../../../component/Form/FormOptions.dart';
import '../../../component/Form/FormTitle.dart';
import '../DataSheet_master.dart';
  import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
class regMember extends StatefulWidget {
  @override
  State<regMember> createState() => _regMemberState();
}

class _regMemberState extends State<regMember> {
  /*
 $first','$middle','$last','$phone','$birthday',
 '$cell','$zone','$church','$branch','$location');
  */
  TextEditingController FName = TextEditingController();
  TextEditingController MName = TextEditingController();
  TextEditingController first = TextEditingController();
  TextEditingController middle = TextEditingController();
  TextEditingController last = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController birthday = TextEditingController();
  TextEditingController Cell = TextEditingController();
  TextEditingController Zone = TextEditingController();
  TextEditingController Church = TextEditingController();
  TextEditingController Branch = TextEditingController();
  TextEditingController location = TextEditingController();


  Future register() async{
    String uri = "http://192.168.100.9/hkanisa//register_member.php ";
    var response = await http.post(Uri.parse(uri),body: {
      "FName": FName.text,
      "MName": MName.text,
    });

    var data = json.decode(response.body);
   /* if (data ==" ")*/
  }


  Future<void> insertRecord() async {
    if (first.text == "" ||
        middle.text == "" ||
        last.text == "" ||
        phone.text == "" ||
        birthday.text == "" ||
        Cell.text == "" ||
        Zone.text == "" ||
        Church.text == "" ||
        Branch.text == "" ||
        location.text == "") {
      try {
        String url = 'http://192.168.100.9/hkanisa//register_member.php';
        var res = await http.post(Uri.parse(url),
    headers: {
    "Access-Control-Allow-Origin": "*",
    'Content-Type': 'application/json',
    'Accept': '*/*'
    }, body: {
          "FName": first.text,
          "MName": middle.text,
          "LName": last.text,
          "Phone_Number": phone.text,
          "DOB": birthday.text,
          "LoveGroup": Cell.text,
          "Zone": Zone.text,
          "Church": Church.text,
          "Branch": Branch.text,
          "City": location.text,
        });
        var response = jsonDecode(res.body);
        if (response["success"] == "true") {
          print("Record Inserted");
          first.text = "";
          middle.text = "";
          last.text = "";
          phone.text = "";
          birthday.text = "";
          Cell.text = "";
          Zone.text = "";
          Church.text = "";
          Branch.text = "";
          location.text = "";
        }
      } catch (e) {
        print(e);
      }
    } else {
      print('Please fill all fields');
    }
  }

  @override
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
                      title: "Register Member",
                      onClicked: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DataSheet(),
                        ));
                      })),
              SingleChildScrollView(
                child: Column(
                  children: [
                    FormText(text: "First Name", controller: first),
                    FormText(text: "Middle Name", controller: middle),
                    FormText(text: "Last Name", controller: last),
                    FormText(text: "Phone Number", controller: phone),
                    FormBirthday(text: "Birthday", controller: birthday),
                    FormDropDown(text: "Cell", list: cell),
                    FormDropDown(text: "Zone", list: zone),
                    FormDropDown(text: "Church", list: church),
                    FormDropDown(text: "Branch", list: branch),
                    FormText(text: "Location", controller: location),
                    FormButton(
                        text: "Submit",
                        action: () {
                         insertRecord();
                        })
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future getData() async {
    var url = 'https://h-kanisa.000webhostapp.com/get.php';
    http.Response response = await http.get(Uri.parse(url));
    var data = jsonDecode(response.body);
    print(data.toString());
  }

  @override
  void initState() {
    getData();
  }
}
