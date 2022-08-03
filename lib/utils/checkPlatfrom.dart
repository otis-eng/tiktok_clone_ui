import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;

CheckPlatfrom() {
  if (kIsWeb) {
    return "Webs";
  } else if (Platform.isAndroid) {
    return "Android";
  } else if (Platform.isIOS) {
    return "IOS";
  } else if (Platform.isMacOS) {
    return "MacOs";
  } else if (Platform.isWindows) {
    return "Windows";
  } else {
    return "Linux";
  }
}
