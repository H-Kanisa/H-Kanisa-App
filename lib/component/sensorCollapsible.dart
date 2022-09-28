import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_dashboard/component/sensorCollapsible.dart';
import 'package:responsive_dashboard/component/sensorCollapsible.dart';
import 'package:responsive_dashboard/main.dart';
import 'package:responsive_dashboard/style/pallete.dart';

class SenserCollapsible extends ChangeNotifier {
  bool _isCollapsed = false;

  bool get isCollapsed => _isCollapsed;

  void toggleIsCollapsed() {
    _isCollapsed = !_isCollapsed;

    notifyListeners();
  }
}
