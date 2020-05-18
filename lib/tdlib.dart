import 'dart:async';

import 'package:flutter/services.dart';

class Tdlib {
  static const MethodChannel _channel =
      const MethodChannel('tdlib');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
