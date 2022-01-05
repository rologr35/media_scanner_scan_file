
import 'dart:async';

import 'package:flutter/services.dart';

class MediaScannerScanFile {
  static const MethodChannel _channel =
  const MethodChannel('media_scanner_scan_file');

  static Future<Map<String, dynamic>> scanFile(String fileUri) async {
    final result = await _channel.invokeMethod('scan', <String, dynamic>{
      'fileUri' : fileUri,
    });
    return result;
  }
}
