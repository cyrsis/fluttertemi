import 'dart:async';

import 'package:flutter/services.dart';

class Fluttertemi {
  static const MethodChannel _channel =
      const MethodChannel('fluttertemi');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
