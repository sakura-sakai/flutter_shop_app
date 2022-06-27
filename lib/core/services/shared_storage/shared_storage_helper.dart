part of shared_storage;

/// ///
/// [SharedStorageHelper] is a service that supports simple data storage
/// ///
/// use it:
///
/// Please call ensureInitialized()  before calling [runApp].
/// ```dart
///   void main() async {
///      await SharedStorageHelper.ensureInitialized();
///
///      runApp(App());
///   }
/// ```
///
/// ``` Write value:
///  _read(sharedStorageHelperProvider).write<String>(
///     key: "key":,
///     value: "sakura",
//  );
/// ```
///
/// ``` Read value:
///   final data = _read(sharedStorageHelperProvider).read<key>("key");
/// ```
///
/// Supported Type: String, int, double, bool,
///   List<String>, Map<String, dynamic>.
///

final sharedStorageHelperProvider = Provider<SharedStorageHelper>(
  (_) => SharedStorageHelper(),
);

class SharedStorageHelper {
  SharedStorageHelper._();

  static SharedStorageHelper? _instance;

  factory SharedStorageHelper() => _instance ??= SharedStorageHelper._();

  static late SharedPreferences _preferences;

  ///
  /// Returns an instance of the [SharedPreferences].
  ///
  /// If you need to use SharedStorageHelper.
  /// You need to call this method before calling [runApp].
  ///
  static Future<void> ensureInitialized() async {
    try {
      _preferences = await SharedPreferences.getInstance();
    } catch (e) {
      throw SharedStorageException(e.toString());
    }
  }

  ///
  /// Write the value
  ///
  /// Saves a [T] value to persistent storage in the background.
  ///
  Future<void> write<T>({required String key, required T value}) async {
    try {
      switch (T) {
        case String:
          await _preferences.setString(key, value as String);
          break;

        case int:
          await _preferences.setInt(key, value as int);
          break;

        case double:
          await _preferences.setDouble(key, value as double);
          break;

        case bool:
          await _preferences.setBool(key, value as bool);
          break;

        case List<String>:
          await _preferences.setStringList(key, value as List<String>);
          break;

        case Map<String, dynamic>:
          await _preferences.setString(key, jsonEncode(value as String));
          break;

        default:
          throw SharedStorageException(
            'Unsupported value type (key: $key - value: $value)',
          );
      }
    } catch (e) {
      throw SharedStorageException(e.toString());
    }
  }

  ///
  /// Read the value
  ///
  /// Reads a value from persistent storage,
  /// throwing an exception if it's not a [T]
  //   .
  ///
  T? read<T>(String key) {
    try {
      switch (T) {
        case String:
          return _preferences.getString(key) as T?;

        case int:
          return _preferences.getInt(key) as T?;

        case double:
          return _preferences.getDouble(key) as T?;

        case bool:
          return _preferences.getBool(key) as T?;

        case List<String>:
          return _preferences.getStringList(key) as T?;

        case Map<String, dynamic>:
          final jsonData = _preferences.getString(key);
          if (jsonData == null) {
            return {} as T?;
          } else {
            return jsonDecode(jsonData) as T?;
          }

        default:
          throw UnsupportedError('Unsupported value type');
      }
    } catch (e) {
      throw SharedStorageException(e.toString());
    }
  }

  ///
  /// Deletes associated value for the given [key].
  ///
  Future<bool> delete(String key) async {
    try {
      return await _preferences.remove(key);
    } catch (e) {
      throw SharedStorageException(e.toString());
    }
  }

  ///
  /// Completes with true once the user preferences
  /// for the app has been cleared.
  ///
  Future<bool> deleteAll() async {
    try {
      return await _preferences.clear();
    } catch (e) {
      throw SharedStorageException(e.toString());
    }
  }

  ///
  /// Returns true if persistent storage the contains the given [key].
  ///
  Future<bool> containsKey(String key) async {
    bool _containsKey = false;
    try {
      _containsKey = _preferences.containsKey(key);
    } catch (e) {
      throw SharedStorageException(e.toString());
    }

    return _containsKey;
  }
}
