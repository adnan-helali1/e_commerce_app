import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  // Private constructor
  SharedPrefHelper._();

  static const FlutterSecureStorage _secureStorage = FlutterSecureStorage();
  static const String _storeNameKey = 'storeName';
  static const String _ownerNameKey = 'ownerName';
  static const String _appLocaleKey = 'app_locale';

  /// Save user token securely
  static Future<void> setUserToken(String token) async {
    await _secureStorage.write(key: 'userToken', value: token);
  }

  /// Get user token
  static Future<String?> getUserToken() async {
    return await _secureStorage.read(key: 'userToken');
  }

  /// Remove user token
  static Future<void> removeUserToken() async {
    await _secureStorage.delete(key: 'userToken');
  }

  /// Save store name
  static Future<void> setStoreName(String? storeName) async {
    if (storeName == null) return;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_storeNameKey, storeName);
  }

  /// Get store name
  static Future<String?> getStoreName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_storeNameKey);
  }

  /// Remove store name
  static Future<void> removeStoreName() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_storeNameKey);
  }

  /// Save owner/username (fallback to email if owner name not provided)
  static Future<void> setOwnerName(String? ownerName) async {
    if (ownerName == null) return;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_ownerNameKey, ownerName);
  }

  /// Get owner name
  static Future<String?> getOwnerName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_ownerNameKey);
  }

  /// Remove owner name
  static Future<void> removeOwnerName() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_ownerNameKey);
  }

  /// Save app locale language code (e.g. en, de, fr)
  static Future<void> setAppLocale(String languageCode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_appLocaleKey, languageCode);
  }

  /// Get saved app locale language code
  static Future<String?> getAppLocale() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_appLocaleKey);
  }

  /// Clear all secure data
  static Future<void> clearAllSecuredData() async {
    await _secureStorage.deleteAll();
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_storeNameKey);
    await prefs.remove(_ownerNameKey);
    await Hive.deleteFromDisk();
  }
}
