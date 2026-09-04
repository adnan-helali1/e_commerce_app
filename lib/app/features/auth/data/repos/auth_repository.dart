import 'package:B2B/app/core/helpers/shared_pref_helper.dart';
import 'package:B2B/app/core/networking/api_constans.dart';
import 'package:B2B/app/features/auth/data/auth_session_notifier.dart';
import 'package:B2B/app/features/auth/data/models/login_request_body.dart';
import 'package:B2B/app/features/auth/data/models/login_response.dart';
import 'package:B2B/app/features/auth/data/models/register_request_body.dart';
import 'package:B2B/app/features/auth/data/models/register_response.dart';
import 'package:B2B/app/features/auth/data/session_expired_exception.dart';
import 'package:B2B/app/features/auth/data/storage/token_storage.dart';
import 'package:dio/dio.dart';

class AuthRepository {
  AuthRepository({
    required Dio apiDio,
    required Dio refreshDio,
    required TokenStorage tokenStorage,
    required AuthSessionNotifier sessionNotifier,
  })  : _apiDio = apiDio,
        _refreshDio = refreshDio,
        _tokenStorage = tokenStorage,
        _sessionNotifier = sessionNotifier;

  final Dio _apiDio;
  final Dio _refreshDio;
  final TokenStorage _tokenStorage;
  final AuthSessionNotifier _sessionNotifier;

  Future<String>? _refreshingTokenFuture;

  TokenStorage get tokenStorage => _tokenStorage;

  Future<LoginResponse> login(LoginRequestBody request) async {
    final response = await _apiDio.post<Map<String, dynamic>>(
      ApiConstants.login,
      data: request.toJson(),
    );
    final loginResponse = LoginResponse.fromJson(response.data!);
    final token = loginResponse.userData?.token;
    if (token == null || token.isEmpty) {
      throw const SessionExpiredException(AuthSessionStatus.unauthenticated);
    }

    await _tokenStorage.saveToken(token);
    await _tokenStorage.saveAccountType(AccountType.store);
    await SharedPrefHelper.setStoreName(
      loginResponse.userData?.storeData?.name,
    );
    _sessionNotifier.emit(AuthSessionStatus.authenticated);
    return loginResponse;
  }

  Future<RegisterResponse> register(RegisterRequestBody request) async {
    final response = await _apiDio.post<Map<String, dynamic>>(
      ApiConstants.register,
      data: request.toJson(),
    );
    return RegisterResponse.fromJson(response.data!);
  }

  Future<void> logout() async {
    try {
      await _apiDio.post<void>(ApiConstants.logout);
    } finally {
      await clearSession(status: AuthSessionStatus.unauthenticated);
    }
  }

  Future<bool> restoreSession() async {
    final token = await _tokenStorage.readToken();
    final accountType = await _tokenStorage.readAccountType();
    if (token == null || token.isEmpty || accountType == null) {
      await clearSession(status: AuthSessionStatus.unauthenticated);
      return false;
    }

    try {
      await _apiDio.get<void>(ApiConstants.profile);
      _sessionNotifier.emit(AuthSessionStatus.authenticated);
      return true;
    } on DioException catch (error) {
      if (error.response?.statusCode == 401 ||
          error.response?.statusCode == 403) {
        return false;
      }
      rethrow;
    }
  }

  Future<String> refreshToken() {
    final inProgress = _refreshingTokenFuture;
    if (inProgress != null) return inProgress;

    final refresh = _performRefresh();
    _refreshingTokenFuture = refresh;
    return refresh.whenComplete(() {
      if (identical(_refreshingTokenFuture, refresh)) {
        _refreshingTokenFuture = null;
      }
    });
  }

  Future<String> _performRefresh() async {
    final oldToken = await _tokenStorage.readToken();
    final accountType = await _tokenStorage.readAccountType();
    if (oldToken == null || oldToken.isEmpty || accountType == null) {
      await clearSession(status: AuthSessionStatus.sessionExpired);
      throw const SessionExpiredException(AuthSessionStatus.sessionExpired);
    }

    try {
      final response = await _refreshDio.post<Map<String, dynamic>>(
        ApiConstants.refresh,
        options: Options(headers: {'Authorization': 'Bearer $oldToken'}),
      );
      final data = response.data?['data'];
      final newToken = data is Map<String, dynamic> ? data['token'] : null;
      if (newToken is! String || newToken.isEmpty) {
        await clearSession(status: AuthSessionStatus.sessionExpired);
        throw const SessionExpiredException(AuthSessionStatus.sessionExpired);
      }
      await _tokenStorage.saveToken(newToken);
      return newToken;
    } on DioException catch (error) {
      final statusCode = error.response?.statusCode;
      if (statusCode == 401 || statusCode == 403) {
        final message = _responseMessage(error.response?.data);
        final status = statusCode == 403 && message == 'Account is inactive'
            ? AuthSessionStatus.accountInactive
            : AuthSessionStatus.sessionExpired;
        await clearSession(status: status);
        throw SessionExpiredException(status);
      }
      rethrow;
    }
  }

  Future<void> clearSession({
    AuthSessionStatus status = AuthSessionStatus.unauthenticated,
  }) async {
    await _tokenStorage.clearSession();
    _sessionNotifier.emit(status);
  }

  String? _responseMessage(dynamic body) {
    return body is Map<String, dynamic> ? body['message'] as String? : null;
  }
}
