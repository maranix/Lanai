import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'application/app.dart';

void main() async {
  runApp(
    DevicePreview(
      /// Only enable in Debug Mode
      enabled: !kReleaseMode && !kProfileMode,
      builder: (context) => const App(),
    ),
  );
}
