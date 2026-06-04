import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  // Private constructor
  SharedPrefHelper._();

  static const FlutterSecureStorage _secureStorage = FlutterSecureStorage();
  static const String _storeNameKey = 'storeName';
  static const String _ownerNameKey = 'ownerName';

  /// Save user token securely
  static Future<void> setUserToken(String token) async {
    debugPrint('FlutterSecureStorage: Token saved securely');
    await _secureStorage.write(key: 'userToken', value: token);
  }

  /// Get user token
  static Future<String?> getUserToken() async {
    debugPrint('FlutterSecureStorage: Getting user token');
    return await _secureStorage.read(key: 'userToken');
  }

  /// Remove user token
  static Future<void> removeUserToken() async {
    debugPrint('FlutterSecureStorage: User token removed');
    await _secureStorage.delete(key: 'userToken');
  }

  /// Save store name
  static Future<void> setStoreName(String? storeName) async {
    if (storeName == null) return;
    debugPrint('SharedPrefHelper: Store name saved');
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_storeNameKey, storeName);
  }

  /// Get store name
  static Future<String?> getStoreName() async {
    debugPrint('SharedPrefHelper: Getting store name');
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_storeNameKey);
  }

  /// Remove store name
  static Future<void> removeStoreName() async {
    debugPrint('SharedPrefHelper: Store name removed');
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_storeNameKey);
  }

  /// Save owner/username (fallback to email if owner name not provided)
  static Future<void> setOwnerName(String? ownerName) async {
    if (ownerName == null) return;
    debugPrint('SharedPrefHelper: Owner name saved');
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_ownerNameKey, ownerName);
  }

  /// Get owner name
  static Future<String?> getOwnerName() async {
    debugPrint('SharedPrefHelper: Getting owner name');
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_ownerNameKey);
  }

  /// Remove owner name
  static Future<void> removeOwnerName() async {
    debugPrint('SharedPrefHelper: Owner name removed');
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_ownerNameKey);
  }

  /// Clear all secure data
  static Future<void> clearAllSecuredData() async {
    debugPrint('SharedPrefHelper: All secure data cleared');
    await _secureStorage.deleteAll();
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_storeNameKey);
    await prefs.remove(_ownerNameKey);
  }
}
