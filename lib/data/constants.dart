import 'package:flutter_dotenv/flutter_dotenv.dart';

final apiKEY = dotenv.env['pexelsAPIKEY'] ?? '';
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
