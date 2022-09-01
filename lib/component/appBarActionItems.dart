import 'package:flutter/material.dart';
import 'package:responsive_dashboard/style/colors.dart';

class AppBarActionItems extends StatelessWidget {
  const AppBarActionItems({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
            icon: Icon(Icons.settings, size: 27, color: AppColors.greenHK),
            onPressed: () {}),
        SizedBox(width: 8),
        IconButton(
            icon: Icon(Icons.account_circle_rounded, size: 27, color: AppColors.greenHK),
            onPressed: () {}),
        SizedBox(width: 10),
      ],
    );
  }
}
