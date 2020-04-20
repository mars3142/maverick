import 'dart:async';

import 'package:flutter/services.dart';

class Maverick {
  static const MethodChannel _channel =
      const MethodChannel('maverick');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
