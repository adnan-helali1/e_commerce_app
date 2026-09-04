import 'package:B2B/app/core/helpers/shared_pref_helper.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';

enum AccountType { store }

abstract class TokenStorage {
  Future<void> saveToken(String token);
  Future<String?> readToken();
  Future<void> deleteToken();
  Future<void> saveAccountType(AccountType type);
  Future<AccountType?> readAccountType();
  Future<void> clearSession();
}

class SecureTokenStorage implements TokenStorage {
  SecureTokenStorage({FlutterSecureStorage? secureStorage})
      : _secureStorage = secureStorage ?? const FlutterSecureStorage();

  static const _tokenKey = 'userToken';
  static const _accountTypeKey = 'accountType';

  final FlutterSecureStorage _secureStorage;

  @override
  Future<void> saveToken(String token) =>
      _secureStorage.write(key: _tokenKey, value: token);

  @override
  Future<String?> readToken() => _secureStorage.read(key: _tokenKey);

  @override
  Future<void> deleteToken() => _secureStorage.delete(key: _tokenKey);

  @override
  Future<void> saveAccountType(AccountType type) =>
      _secureStorage.write(key: _accountTypeKey, value: type.name);

  @override
  Future<AccountType?> readAccountType() async {
    final value = await _secureStorage.read(key: _accountTypeKey);
    return value == AccountType.store.name ? AccountType.store : null;
  }

  @override
  Future<void> clearSession() async {
    await Future.wait([
      _secureStorage.delete(key: _tokenKey),
      _secureStorage.delete(key: _accountTypeKey),
      SharedPrefHelper.removeStoreName(),
      SharedPrefHelper.removeOwnerName(),
    ]);
    await Hive.deleteFromDisk();
  }
}
