import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:media_scanner_scan_file/media_scanner_scan_file.dart';

void main() {
  const MethodChannel channel = MethodChannel('media_scanner_scan_file');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {

  });
}
