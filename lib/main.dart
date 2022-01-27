import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'application/app.dart';
import 'domain/services/photo_provider.dart';

void main() async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<PhotoProvider>(
          create: (_) => PhotoProvider(),
        ),
      ],
      child: const App(),
    ),
  );
}
