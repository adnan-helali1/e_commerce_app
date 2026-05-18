import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SharedPrefHelper {
  // Private constructor
  SharedPrefHelper._();

  static const FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  /// Save user token securely
  static Future<void> setUserToken(String token) async {
    debugPrint('SharedPrefHelper: Token saved securely');
    await _secureStorage.write(key: 'userToken', value: token);
  }

  /// Get user token
  static Future<String?> getUserToken() async {
    debugPrint('SharedPrefHelper: Getting user token');
    return await _secureStorage.read(key: 'userToken');
  }

  /// Remove user token
  static Future<void> removeUserToken() async {
    debugPrint('SharedPrefHelper: User token removed');
    await _secureStorage.delete(key: 'userToken');
  }

  /// Clear all secure data
  static Future<void> clearAllSecuredData() async {
    debugPrint('SharedPrefHelper: All secure data cleared');
    await _secureStorage.deleteAll();
  }
}
