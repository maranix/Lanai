import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:lanai/application/app.dart';

void main() async {
  runApp(
    DevicePreview(
      /// Only enable in Debug Mode
      enabled: false,
      builder: (context) => const App(),
    ),
  );
}
