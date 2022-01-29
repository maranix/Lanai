import 'package:shared_preferences/shared_preferences.dart';

abstract class Cache {}

// TODO: Refactor cache hit and cache miss logic to an elegant one.
class ApiCacheProvider {
  static void cacheRequest(String key, String value) async {
    final _sharedPreferences = await SharedPreferences.getInstance();
    _sharedPreferences.setString(key, value);
  }

  static Future<String?> getCachedRequest(String key) async {
    final _sharedPreferences = await SharedPreferences.getInstance();
    return _sharedPreferences.getString(key);
  }
}
