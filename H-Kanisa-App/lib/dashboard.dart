import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Welcome/components/background.dart';
import 'package:responsive_dashboard/page/ScreenWrapper.dart';
import 'package:responsive_dashboard/pallete.dart';
import 'package:responsive_dashboard/component/BottomNavigationBar.dart';
import 'package:responsive_dashboard/component/NavBar.dart';
import 'package:responsive_dashboard/component/appBarActionItems.dart';

import 'package:responsive_dashboard/component/header.dart';
import 'package:responsive_dashboard/component/historyTable.dart';
import 'package:responsive_dashboard/component/infoCard.dart';
import 'package:responsive_dashboard/component/menuItems.dart';
import 'package:responsive_dashboard/component/navigatormenu.dart';
import 'package:responsive_dashboard/component/BottomNavigationBar.dart';
import 'package:responsive_dashboard/component/paymentDetailList.dart';
import 'package:responsive_dashboard/config/menuItems.dart';
import 'package:responsive_dashboard/config/responsive.dart';
import 'package:responsive_dashboard/config/size_config.dart';
import 'package:responsive_dashboard/page/Common_Items/DataSheet%20Master/Register%20Member.dart';
import 'package:responsive_dashboard/page/Setup/Add%20Cell%20Group.dart';
import 'package:responsive_dashboard/page/Setup/Add%20Church.dart';
import 'package:responsive_dashboard/page/Setup/Add%20Zone.dart';
import '../pallete.dart';
import 'package:responsive_dashboard/style/style.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Dashboard extends StatelessWidget {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key: _drawerKey,
      backgroundColor: AppColor.whiteHK,
      drawer: SizedBox(width: 210, child: IconMenu()),
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              elevation: 0,
              backgroundColor: AppColor.whiteHK,
              leading: IconButton(
                  onPressed: () {
                    _drawerKey.currentState.openDrawer();
                  },
                  icon: Icon(Icons.menu, size: 27, color: AppColor.greenHK)),
              actions: [
                AppBarActionItems(),
              ],
            )
          : PreferredSize(
              preferredSize: Size.zero,
              child: SizedBox(),
            ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                flex: 1,
                child: IconMenu(),
              ),
            Expanded(
                flex: 10,
                child: SafeArea(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Header(),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 4,
                        ),
                        SizedBox(
                          width: SizeConfig.screenWidth,
                          child: Wrap(
                            spacing: 20,
                            runSpacing: 20,
                            alignment: WrapAlignment.spaceBetween,
                            children: [
                              InfoCard(
                                  image: 'assets/people.png',
                                  // cardColor: Color.fromARGB(28, 25, 51, 51),
                                  label: 'Total \nMembers',
                                  number: '\56,479',
                                  onClicked: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: ((context) =>
                                                regMember())));
                                  }),
                              InfoCard(
                                  image: 'assets/church.png',
                                  label: 'Registered \nChurches',
                                  //  cardColor: Color.fromARGB(7, 149, 193, 61),
                                  number: '\21',
                                  onClicked: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: ((context) =>
                                                addChurch())));
                                  }),
                              InfoCard(
                                  image: 'assets/group.png',
                                  label: 'Harvest \nGroups',
                                  //  cardColor: AppColor.blueSubtleHK,
                                  number: '\147',
                                  onClicked: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: ((context) => addCell())));
                                  }),
                              InfoCard(
                                  image: 'assets/Zone.png',
                                  // cardColor: AppColor.redSubtleHK,
                                  label: 'Zones \n ',
                                  number: '\57',
                                  onClicked: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: ((context) => addZone())));
                                  }),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 4,
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
