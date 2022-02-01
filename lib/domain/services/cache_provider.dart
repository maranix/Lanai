import 'package:shared_preferences/shared_preferences.dart';

abstract class Cache {}

// TODO: Refactor cache hit and cache miss logic to an elegant one.
class ApiCacheProvider {
  static void cacheRequest(String key, String value) async {
    final _sharedPreferences = await SharedPreferences.getInstance();
    _sharedPreferences.setString('cacheTime', DateTime.now().toString());
    _sharedPreferences.setString(key, value);
  }

  static Future<String?> getCachedRequest(String key) async {
    final _sharedPreferences = await SharedPreferences.getInstance();

    final _cacheTime = _sharedPreferences.getString('cacheTime');

    if (_cacheTime == null) {
      return null;
    } else {
      final _elapsedTime =
          DateTime.now().difference(DateTime.parse(_cacheTime)).inHours;
      if (_elapsedTime >= 4) {
        await _sharedPreferences.clear();
      }
      return _sharedPreferences.getString(key);
    }
  }
}
