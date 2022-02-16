import 'package:shared_preferences/shared_preferences.dart';

abstract class CacheManager {
  const CacheManager();

  /// SharedPreference instance, initially it will be null unless the related,
  /// manager is needed and called.
  SharedPreferences? get sharedPreferences => null;
}

// TODO: Implement Api Cache Manager.
class ApiCache extends CacheManager {
  /// # ApiCache Manager
  /// Get the instance of SharedPreferences when instantiating the class,
  /// Use the provided instance for storing and retrieving api related information.
  const ApiCache(this.sharedPreferences);

  /// [Override] the super classes sharedPreferences attribute and populate it,
  /// with an actual working instance.
  @override
  final SharedPreferences sharedPreferences;
}
