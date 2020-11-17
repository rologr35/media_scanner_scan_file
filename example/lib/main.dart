import 'package:flutter/material.dart';
import 'dart:io';

import 'package:media_scanner_scan_file/media_scanner_scan_file.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    File f = File('/storage/emulated/0/Pictures/example.png');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('File path: ${_scanFile(f)}\n'),
        ),
      ),
    );
  }
}

Future<String> _scanFile(File f) async{
  final result = await MediaScannerScanFile.scanFile(f.path);
  return result['filePath'];
}
