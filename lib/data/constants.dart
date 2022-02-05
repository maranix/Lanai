import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final apiKEY = kReleaseMode
    ? const String.fromEnvironment('pexelsAPIKEY', defaultValue: '')
    : dotenv.env['pexelsAPIKEY'] ?? '';

const apiPREFIX = 'https://api.pexels.com/v1/';

const queryKeywords = [
  'nature',
  'work+from+home',
  'light',
  'texture',
  'raining',
  'adventure',
  'dark',
  'retro',
];
