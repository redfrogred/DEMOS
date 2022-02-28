
import 'package:flutter/foundation.dart';
import '../classes/config.dart';

class Utils {

static void log(String message){
      if (kDebugMode) {
        // ignore: avoid_print
        print('>> ' + message);
      }
  }

}  