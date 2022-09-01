import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/ManageUser.dart';
import 'package:responsive_dashboard/dashboard.dart';
import 'package:responsive_dashboard/page/People.dart';

import '../pallete.dart';

class bottomNav extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => bottomNavState();
}

class bottomNavState extends State<bottomNav> {
  List<Widget> _widgetOptions = <Widget>[Dashboard(), People(), manageUsers()];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(body: Center(child: _widgetOptions[_selectedIndex]));
  }
}

int _selectedIndex = 1;

void selectedItem(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => People(),
      ));

      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Dashboard(),
      ));

      break;
    case 2:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => manageUsers(),
      ));

      break;
  }
}

Widget BottomNav({
  String title,
  VoidCallback onClicked,
}) {
  return BottomNavigationBar(
    currentIndex: _selectedIndex,
    elevation: 10,
    showSelectedLabels: false,
    type: BottomNavigationBarType.shifting,
    showUnselectedLabels: false,
    selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
    selectedItemColor: AppColor.greenHK,
    unselectedItemColor: AppColor.midGreyHk,
    items: const [
      //People Navigation
      BottomNavigationBarItem(
          icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
          label: "People"),
      //Home Navigation
      BottomNavigationBarItem(
          icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
          label: "Home"),
      //More
      BottomNavigationBarItem(
          icon: Icon(FluentSystemIcons.ic_fluent_apps_list_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_apps_list_filled),
          label: "People"),
    ],
  );
}
