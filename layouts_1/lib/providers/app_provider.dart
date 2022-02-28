// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

class App with ChangeNotifier {
  
  // Layout Dropdown stuff
  // 
  String _mainDropdownvalue = 'Layout Menu';

  String getMainDropdownvalue () {
    return _mainDropdownvalue;
  }

  void setMainDropdownvalue ( String str) {
    _mainDropdownvalue == str;
  }






  // debug
  static bool debugFlag = true;
  static int beginTimeStamp = DateTime.now().millisecondsSinceEpoch;

  // version start
  static const String _version = '1.0';
  static const String buildVersion = '.j';
  String getVersion() {
    return _version;
  }

  String getBuildVersion() {
    return _version + buildVersion;
  }

  int getBeginTimeStamp() {
    return beginTimeStamp;
  }

  String getAppBarTitle() {
    if(debugFlag == true ) {
      return 'Minute Timer ' + getBuildVersion();
    }
    else {
      return 'Minute Timer';
    }
  }

  // debug colors
  Color debug1 = Colors.yellow; 
  Color debug2 = Colors.orange; 

  // bottom nav start
  int _currentBottomNavIndex = 0;
  int getCurrentBottomNavIndex() {
    return _currentBottomNavIndex;
  }
  void setCurrentBottomNavIndex( int num ) {
    _currentBottomNavIndex = num;
  }

  // =====

  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}