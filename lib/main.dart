import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'application/app.dart';
import 'domain/services/photo_provider.dart';

void main() async {
  await dotenv.load(fileName: ".env");

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<PhotoProvider>(
          create: (_) => PhotoProvider(),
        ),
        // ! Reserved for future release
        // ChangeNotifierProvider<CollectionsProvider>(
        //   create: (_) => CollectionsProvider(),
        // ),
      ],
      child: DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const App(),
      ),
    ),
  );
}
