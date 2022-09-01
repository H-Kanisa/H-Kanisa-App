import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/component/CustomTextField.dart';
import 'package:responsive_dashboard/dashboard.dart';
import 'package:responsive_dashboard/main.dart';
import 'package:responsive_dashboard/page/Common_Items/DataSheet_master.dart';
import 'package:responsive_dashboard/pallete.dart';
import 'package:responsive_dashboard/pallete.dart';
import 'package:responsive_dashboard/style/colors.dart';

import '../../../component/BottomNavigationBar.dart';
import '../../../component/CustomAppBar.dart';
import '../../../component/DropDown.dart';
import '../../../component/constants.dart';
import '../../../component/navigatormenu.dart';

Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Common_Items',
      color: AppColor.whiteHK,
      theme: ThemeData(
          primarySwatch: AppColor.colorHK,
          scaffoldBackgroundColor: Colors.white),
      home: regVisitor(),
    );

class regVisitor extends StatefulWidget {
  const regVisitor({
    Key key,
  }) : super(key: key);

  @override
  _regVisitorState createState() => _regVisitorState();
}

class _regVisitorState extends State<regVisitor> {
  /// This is list of city which will pass to the drop down.
  ///
  /// Gender list
  ///
  final List<SelectedListItem> _Gender = [
    SelectedListItem(false, "Male", value: "Male"),
    SelectedListItem(false, "Female", value: "Female"),
  ];

  ///Church list
  ///
  final List<SelectedListItem> _Church = [
    SelectedListItem(false, "HFC", value: "HFC"),
    SelectedListItem(false, "ARK", value: "ARK"),
    SelectedListItem(false, "TGL", value: "TGL"),
  ];

  ///Branch list
  ///
  final List<SelectedListItem> _Department = [
    SelectedListItem(false, "Creative Arts", value: "Creative Arts"),
    SelectedListItem(false, "Media", value: "Media"),
  ];

  ///Church list
  ///
  final List<SelectedListItem> _Cell = [
    SelectedListItem(false, "Biazo", value: "Biazo"),
    SelectedListItem(false, "Anadea", value: "Anadea"),
  ];

  /// This is register text field controllers.

  final TextEditingController _genderTextEditingController =
      TextEditingController();

  @override
  void dispose() {
    super.dispose();

    _genderTextEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: "Registor Visitor",
          onClickedHome: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: ((context) => Dashboard())));
          },
          onClickedBack: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: ((context) => DataSheet())));
          }),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: _mainBody(),
      ),
      // bottomNavigationBar: BottomNav(),
    );
  }

  /// This is Main Body widget.
  Widget _mainBody() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30.0,
          ),
          //Title
          const Text(
            kRegister,
            style: TextStyle(
              fontSize: 34.0,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          TextDropDown(
            textEditingController: _genderTextEditingController,
            title: kGender,
            hint: kChooseYourCity,
            isGenderSelected: true,
            gender: _Gender,
          ),
          const SizedBox(
            height: 15.0,
          ),
          _AppElevatedButton(),
        ],
      ),
    );
  }
}

/// This is Common App textfiled class.
class TextDropDown extends StatefulWidget {
  TextEditingController textEditingController = TextEditingController();
  final String title;
  final String hint;
  final enabledBorder;
  final bool isGenderSelected;
  final List<SelectedListItem> gender;
  final List<SelectedListItem> church;
  final List<SelectedListItem> cell;
  final List<SelectedListItem> department;
  TextDropDown({
    this.textEditingController,
    this.title,
    this.hint,
    this.enabledBorder,
    this.isGenderSelected,
    this.gender,
    this.church,
    this.department,
    this.cell,
  });

  _TextDropDownState createState() => _TextDropDownState();
}

class _TextDropDownState extends State<TextDropDown> {
  TextEditingController _searchTextEditingController = TextEditingController();

  /// This is on text changed method which will display on city text field on changed.
  void onTextFieldTap() {
    DropDownState(
      DropDown(
        submitButtonText: kDone,
        submitButtonColor: AppColor.greenHK,
        searchHintText: kSearch,
        bottomSheetTitle: kgender,
        searchBackgroundColor: Colors.black12,
        dataList: widget.gender ?? [],
        selectedItems: (List<dynamic> selectedList) {
          showSnackBar(selectedList.toString());
        },
        selectedItem: (String selected) {
          showSnackBar(selected);
          widget.textEditingController.text = selected;
        },
        enableMultipleSelection: false,
        searchController: _searchTextEditingController,
      ),
    ).showModal(context);
  }

  void showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title),
        const SizedBox(
          height: 5.0,
        ),
        TextFormField(
          maxLines: 6,
          minLines: 1,
          style: TextStyle(
              fontFamily: 'Poppins', fontSize: 12, fontWeight: FontWeight.w300),
          controller: widget.textEditingController,
          cursorColor: AppColors.greenHK,
          onTap: widget.isGenderSelected
              ? () {
                  FocusScope.of(context).unfocus();
                  onTextFieldTap();
                }
              : null,
          decoration: InputDecoration(
            labelText: 'Gender',
            hintText: 'Enter Gender',
            isDense: true,
            contentPadding: EdgeInsets.fromLTRB(12.0, 8.0, 28.0, 8.0),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2),
              borderSide: BorderSide(
                color: AppColor.midGreyHk,
                width: 1.0,
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
        const SizedBox(
          height: 15.0,
        ),
        TextFormField(
          maxLines: 6,
          minLines: 1,
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12,
              color: AppColors.midGreyHk,
              fontWeight: FontWeight.w300),
          controller: widget.textEditingController,
          decoration: InputDecoration(
            labelText: 'Church',
            labelStyle: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                color: AppColors.greenHK,
                fontWeight: FontWeight.w300),
            hintText: 'Enter Church',
            hintStyle: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                color: AppColors.greenHK,
                fontWeight: FontWeight.w300),
            isDense: true,
            contentPadding: EdgeInsets.fromLTRB(12.0, 8.0, 28.0, 8.0),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2),
              borderSide: BorderSide(
                color: AppColor.midGreyHk,
                width: 1.0,
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
          onTap: onTextFieldTap,
        ),
      ],
    );
  }
}

/// This is common class for 'REGISTER' elevated button.
class _AppElevatedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 60.0,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text(
          kREGISTER,
          style: TextStyle(
              fontSize: 14.0,
              fontFamily: "Poppins",
              color: AppColors.greenHK,
              fontWeight: FontWeight.normal),
        ),
        style: ElevatedButton.styleFrom(
          primary: AppColor.greenHK,
          textStyle: const TextStyle(
              fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
