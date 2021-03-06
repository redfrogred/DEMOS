class Config {
 
  // startup 
  static bool debugFlag = false;
  static int beginTimeStamp = DateTime.now().millisecondsSinceEpoch;

  // version start
  static const String version = '1.0';
  static const String buildVersion = '.g';

  // getters and setters
  static String getFullVersion () {
    return version + buildVersion;
  }
}  