
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../classes/config.dart';

class Utils {

  static void log(String message){
        if (kDebugMode) {
          // ignore: avoid_print
          print('>> ' + message);
        }
    }

  static Color colorMe ( Color color1, int index ) {
    List<Color> colorList =  [
       const Color(0xFF33cc44),
       const Color(0xFFffcc00),
       const Color(0xFF00D1FF),
       const Color(0xFF00BCFF),
       const Color(0xFF009BEE),
    ];

    if( Config.debugFlag == true) {
      return colorList[index];
    }
    else {
      return color1;
    }  
  }  

}  