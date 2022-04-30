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
  final File f = File('/storage/emulated/0/Pictures/example.png');
  String path = '';

  @override
  void initState() {
    super.initState();
    _scanFile(f);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('File path: $path'),
        ),
      ),
    );
  }

  Future<String?> _scanFile(File f) async{
    final result = await MediaScannerScanFile.scanFile(f.path);
    setState(() {
      path = result['filePath'];
    });
    return result['filePath'];
  }

}
