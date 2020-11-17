
import 'dart:async';

import 'package:flutter/services.dart';

class MediaScannerScanFile {
  static const MethodChannel _channel =
      const MethodChannel('media_scanner_scan_file');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
