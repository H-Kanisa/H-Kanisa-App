import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/material.dart';
import '../style/pallete.dart';

class expandableCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primaryColor: AppColor.whiteHK),
    );
  }
}

final List<Map<String, dynamic>> _allUsers = [
  {"id": 1, "name": "Andy", "age": 29},
  {"id": 2, "name": "Imani", "age": 15},
  {"id": 3, "name": "Bob", "age": 5},
  {"id": 4, "name": "Barbara", "age": 35},
  {"id": 5, "name": "Candy", "age": 21},
  {"id": 6, "name": "Colin", "age": 55},
  {"id": 7, "name": "Audra", "age": 30},
  {"id": 8, "name": "Banana", "age": 14},
  {"id": 9, "name": "Caversky", "age": 100},
  {"id": 10, "name": "Becky", "age": 32},
];


Widget ExpandableCard({
  String title,
  String subtitle,
  String content,
  VoidCallback onClick,
}) {
  return PhysicalModel(color: AppColor.midGreyHk,child: Center(
      child: ExpansionCard(
        borderRadius: 20,
        //background:
        title: Container(
          child: ListTile(
            title:Transform.translate(
              offset: Offset(-20, 0),
                child: Text(
                  title??'',
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 30,
                      color:AppColor.greyHK),
                )),
            subtitle:Transform.translate(
                offset: Offset(-20, 0),
                child: Text(
                  subtitle??'',
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 30,
                      color:AppColor.greyHK),
                )),
            ),
          ),
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 7),
            child: Text(content??'',
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 20,
                  color:AppColor.greyHK),),
          )
        ],
        ),

      ));
}


